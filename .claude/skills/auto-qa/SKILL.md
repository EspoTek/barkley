---
name: auto-qa
description: Run the automated crash sweep against the Barkley modern port, triage each crash it finds, fix real bugs, verify the fix by replaying the exact same inputs, and commit. Use when asked to QA the game, hunt crashes, run the bot/monkey tester, or work through autoqa findings.
user-invocable: true
---

# auto-qa

Drives `tools/autoqa.sh` and works each finding through to a committed fix.

Working dir for everything below:
`GMS 1.4 (conv, broken)/BarkleyV110.gmx/BarkleyV110`

## 1. Run the sweep

```sh
./tools/autoqa.sh monkey      # rooms + interact + random input (widest coverage)
./tools/autoqa.sh rooms       # room entry only, fastest
./tools/autoqa.sh interact    # + User Event 1 on every instance
```

Long-running (a full monkey sweep is ~45min). Launch it with `run_in_background`
and a `Monitor` that waits for `fatal   (killed run):` in the output — do not poll.

Results: `tools/autoqa-report.txt`, per-launch logs in `tools/autoqa-logs/`.
Both are gitignored; never commit them.

Report entries look like:

```
CAUGHT [replay: ./tools/autoqa.sh replay monkey 41 0 164549007 2246822519] RomSewer0 obj=oChin :: <message> :: at <script> line <n>
FATAL  (launch 7)
  last step: AUTOQA STEP room=41 name=RomSewer0 inst=12 obj=oChin phase=interact
  replay:    ./tools/autoqa.sh replay monkey 41 12 164549007 2246822519
```

`CAUGHT` = caught in-engine, sweep continued. `FATAL` = escaped and killed the
run. **Both are real crashes for a player** — a caught one would still have shown
them GameMaker's error dialog. The distinction is only about harness survival.

## 2. Triage before fixing

For each finding, decide which of three things it is. Get this right — the
failure mode here is "fixing" a crash no player can reach, which adds defensive
code that masks real bugs later.

**(a) Harness-induced missing global state.** The sweep warps directly into
rooms, bypassing the flow that would normally assign a global. Symptom: an unset
`global.*` that is assigned in exactly one place, on the path into that room
(e.g. `global.romname` from `sFileData(4)`, `global.diemessage` on death).

Do **not** patch the game. Seed a sensible value in `oAutoQA`'s `Alarm_0.gml`
alongside the existing `romname`/`diemessage` block, then re-run that position.
If it still crashes, it was never (a) — treat it as (c).

**(b) Genuinely unreachable dead code.** The identifier is never assigned
anywhere, or its guard can never be true. Confirm against the GM6 ground truth
(`GM 6.1/BarkleyV110.gm6`, plaintext — grep it) before concluding. Comment it
out with a note explaining why, as with `sBClock` in `oBTimer`. Do not delete.

**(c) A real bug.** Fix it. The usual cause is GM6 treat-uninitialised-as-0
semantics: seed the variable in the object's Create (or a parent's), matching
what GM6 would have read. Check GM6 for what the original actually did rather
than guessing a value.

## 3. Verify by replay

Every finding carries its own replay command. After fixing, run it:

```sh
./tools/autoqa.sh replay <mode> <room> <inst> <gameseed> <monkeyseed>
```

Exit 0 = clean, exit 1 = still reproduces. It restores both the game RNG seed
and the monkey's independent input-stream seed, and re-runs from the same room
and instance cursor, so the same keys are pressed in the same order.

**Know what this does and does not prove.** The monkey has its own PRNG
precisely so a fix cannot shift the input sequence. But the *game's* RNG
consumption can change once you alter code, so behaviour downstream of the first
divergent `random()` call may differ. A clean replay is strong evidence, not
proof. If a fix is subtle, also re-run the surrounding rooms.

Check the replay actually pressed the same keys — the command prints the
`AUTOQA INPUT f=<frame> room=<room> key=<code> down=<0|1>` trace. If the inputs
differ from the original run's log, the replay is not valid and the result means
nothing; say so rather than reporting a false pass.

## 4. Commit

One commit per fix, following the repo's existing style: state what broke, why
it broke under GameMaker 2024 vs GM6, and the evidence. Include the replay
command in the message so the finding can be re-verified later.

Never commit `tools/autoqa-report.txt` or `tools/autoqa-logs/`.

Standing permission to commit on `modern-port` only — never push, never commit
to `master`.

## Constraints

- Never claim a fix is verified without a clean replay. Report honestly if a
  replay could not be run or its inputs diverged.
- Do not add defensive `try`/`catch` or seeded defaults to the *game* to silence
  a crash. That is category (a) handling and belongs in the harness.
- The harness is inert unless `BARKLEY_AUTOQA` is set; keep it that way. Nothing
  in `oAutoQA` may change shipped behaviour.
- The sweep exercises reachability, not correctness. It cannot tell you a battle
  plays *correctly*, only that it did not crash.
