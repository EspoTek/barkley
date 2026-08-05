# CLAUDE.md — Barkley Gaiden modern port

## What this repo is

*Barkley, Shut Up and Jam: Gaiden* (2008, GameMaker 6.1) being ported to modern
GameMaker (2024.x). Branch `master` = untouched original ("museum piece") — never
commit to it. Branch `modern-port` = the port; all work happens here. The user has
granted standing permission to commit on `modern-port`; keep bugfixes, features,
and port-compat work in **separate commits**. Never push, never monetize
(CC BY-NC 4.0), remote still uses `main` as default (local renamed to `master`).

## Layout

- `GM 6.1/BarkleyV110.gm6` — **ground truth**. GM6 file, code stored as plaintext;
  when unsure what original code said, `strings`/search this file (it's v1.09/1.10,
  the final 2008 build; v1.20 from 2014 added only the two sound fixes, already applied).
- `GMS 1.4 (conv, broken)/BarkleyV110.gmx/` — repaired GMS 1.4 source tree
  (reference only; no longer the build tree).
- `GMS 1.4 (conv, broken)/BarkleyV110.gmx/BarkleyV110/` — **the live GameMaker 2024
  project** (`BarkleyV110.yyp`). All fixes go here.
- `mvc/` inside the .gmx dir — importer staging junk, gitignored-by-exclusion
  (`git add -A ':!*/mvc/*' ':!*/.gmcache/*'`).
- Original shipped game (reference exe v1.06 + Music/BG/Voice assets):
  `~/Downloads/Barkley_Shut_Up_and_Jam_Gaiden/Barkley.zip`.

## Build / run / debug

```sh
cd "GMS 1.4 (conv, broken)/BarkleyV110.gmx/BarkleyV110"
npx @gamemaker/gm-cli@latest compile BarkleyV110.yyp --target mac --errors-only  # build
npx @gamemaker/gm-cli@latest run BarkleyV110.yyp --target mac                    # launch
```

- Runtime log: `.gmcache/build-gms2-mac-VM/output/debug.log` (runtime errors appear
  here as `ERROR in action ... not set before reading it` etc.).
- Drive input for testing: `osascript` System Events keystrokes at the process whose
  name contains "Runner"; screenshot with `screencapture -x`. Do NOT steal window
  focus if the user is active; prefer headless Chrome for browser checks.
- Browser build: `--target operagx` compiles; `run --target operagx` serves on a
  local port (GMWebServ process). The runtime's `operagx/` module contains the full
  WASM runner. `--target html5` is not in gm-cli yet ("coming soon"); classic HTML5
  export needs the IDE (installed at /Applications/GameMaker.app, user signed in).

## Port architecture (what was changed and why)

- **GM6 semantics shims** (all in the imported project):
  - Every script function has a `/*gm6argdefaults*/` prelude: unpassed args = 0
    (GM6 behavior). Variadic scripts that scanned GM6's 16 zero-filled `argument[]`
    slots (`sS`, `sR`, `sCredits`) use `argument_count` instead.
  - `sKey`/`key_eat` (scripts/sKey/sKey.gml): GM6 `keyboard_clear` ate a held key
    until physical re-press; emulated with `global.__keyeaten[256]`. All direct
    `keyboard_clear` call sites route through this. Never use raw
    keyboard_check+clear for single-fire input.
  - Uninitialized-variable runtime errors: fix by seeding in the object's Create
    (GM6 ran with treat-uninit-as-0). Surface one at a time in debug.log during QA.
- **Music**: `sA` (scripts/sA/sA.gml) plays the embedded sound resources natively.
  The original streamed `Music/*.mp3` via bgm.dll (name map `mBattle` → `_battle.mp3`);
  all 29 `bgm_*` scripts are no-op stubs. Real audio was converted into the
  sound resources (music = streamed OGG). `sa()` is a case-insensitivity alias.
- **Cutscenes**: GM6 `execute_string` payloads (1,090 sites) were extracted into
  scripts `cine_0000`–`cine_0490`; `oCinema` dispatches via `script_execute`.
  `sS`/`sBItemComm`/`sItemUseComm` replace other dynamic-code sites.
- **Display**: persistent `oDisplay` object (created in oController's Game Start)
  presents the 320×240 application surface: Post-Draw blit, nearest-neighbour,
  mode from `global.sat[0]` (0 = fit window/aspect, 1 = strict integer + borders).
  Fullscreen = `global.sat[1]` (applied in its Step). Room view ports are normalized
  to native view size. Settings row "SCALING" = the mode toggle; config persists
  via `sConfig` (config.txt).
- **Transitions**: GM6 blocking `rt_*` library stubbed; `rt_trans` = instant
  `room_goto`. A non-blocking battle-swirl could be rebuilt later as polish.
- **Runtime-built objects**: the 4 enemies that used `object_add` now use real
  objects `oBWhistleP0-3`, `oBMechP0`, `oBMutantballerP0`, `oBSlamspectreP0/1`.
- **v1.20 bugfix**: `sS` never re-plays an already-playing sound (Vinceborg laser
  crash, AGDQ 2014).

## Gotchas

- The importer wraps `draw_text` string args in `string_hash_to_newline(...)` and
  converts `view_*`/`background_*` arrays to `__view_get/set`/`__background_get/set`.
  Any regenerated GML must reproduce those or subtle behavior breaks.
- GML here is GM6 style: `=` used as comparison, one-line if chains — when editing,
  brace any multi-statement if bodies (two silent-bug rounds came from this).
- `.yy`/`.yyp` files are loose JSON (trailing commas) — edit textually, not via
  json module.
- The game logs nothing on success; verify fixes by running and watching debug.log
  plus screenshots.
- 6 drag-and-drop actions exist (oFlame0/1, oLightbolt, oBZauber, oGokuer, oSuit2) —
  don't regenerate those events from source.

## State / next work

Game boots and plays through the intro cleanly on mac; menus/input/music fixed;
display layer modernized (needs QA of settings menu rows and integer mode).
Remaining: full-game QA campaign (uninit-variable errors will surface in later
rooms/battles — fix pattern above), gamepad support (feed `gamepad_*` into the
key layer or `key_ress`), browser packaging + QA, non-blocking battle transition
polish, `package` target for a distributable .app.
