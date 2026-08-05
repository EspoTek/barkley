#!/bin/bash
# Automated crash sweep for the modern port.
#
# A GML fatal error kills the process, so one launch surfaces at most one crash.
# oAutoQA logs "AUTOQA STEP ..." immediately before every risky action; this
# driver reads the last such line out of debug.log, records it against the error,
# then relaunches resuming one step later. Repeat until the sweep reports DONE.
#
#   ./tools/autoqa.sh rooms      # warp through every room, let each settle
#   ./tools/autoqa.sh interact   # ...and fire User Event 1 on every instance
#   ./tools/autoqa.sh monkey     # ...and mash the bound keys at random per room
#
# The party is randomised (level 1-60, stats and skills applied through the
# game's own level-up path) and kept standing in battle, so combat actually
# plays out instead of ending in a wipe.
#
# BARKLEY_AUTOQA_FRAMES tunes how long monkey mode spends per room (default 600
# frames, ~20s at 30fps).
#
# Results land in tools/autoqa-report.txt.

set -uo pipefail
cd "$(dirname "$0")/.."

MODE="${1:-rooms}"
MAXLAUNCH="${2:-400}"
# Stop at the first finding so it gets fixed before the sweep moves on.
# AUTOQA_CONTINUE=1 restores the old skip-and-keep-going behaviour.
CONTINUE="${AUTOQA_CONTINUE:-0}"

# Replay: re-run one exact launch. Seeds and cursor come from a FATAL/CAUGHT
# entry in a previous report, so the same inputs are regenerated.
#   ./tools/autoqa.sh replay <mode> <room> <inst> <gameseed> <monkeyseed>
if [ "$MODE" = "replay" ]; then
  RMODE="$2"; RROOM="$3"; RINST="$4"; RSEED="$5"; RMSEED="$6"; RPASS="${7:-}"
  mkdir -p tools/autoqa-logs
  RLOG=tools/autoqa-logs/replay.out
  echo "replay: mode=$RMODE room=$RROOM inst=$RINST seed=$RSEED mseed=$RMSEED pass=${RPASS:-<none>}"
  BARKLEY_AUTOQA="$RMODE" BARKLEY_AUTOQA_ROOM="$RROOM" BARKLEY_AUTOQA_INST="$RINST" \
  BARKLEY_AUTOQA_SEED="$RSEED" BARKLEY_AUTOQA_MSEED="$RMSEED" \
  BARKLEY_AUTOQA_FRAMES="${BARKLEY_AUTOQA_FRAMES:-600}" \
  npx @gamemaker/gm-cli@latest run BarkleyV110.yyp --target mac > "$RLOG" 2>&1 &
  rpid=$!
  # Wedge detection: a hang produces no error at all, so watch the heartbeat.
  quiet=0; last=-1
  for _ in $(seq 1 900); do
    sleep 1
    kill -0 "$rpid" 2>/dev/null || break
    grep -q "AUTOQA DONE" "$RLOG" 2>/dev/null && break
    sz=$(wc -c <"$RLOG" 2>/dev/null || echo 0)
    if [ "$sz" = "$last" ]; then quiet=$((quiet+1)); [ "$quiet" -ge 30 ] && break
    else quiet=0; last=$sz; fi
  done
  pkill -f "Runner" 2>/dev/null; kill "$rpid" 2>/dev/null; wait "$rpid" 2>/dev/null

  echo "--- inputs ---"; grep "AUTOQA INPUT" "$RLOG" | tail -40
  echo "--- outcome ---"
  # 1. did the sweep actually run? a launch that never starts proves nothing
  if ! grep -q "AUTOQA BEGIN" "$RLOG"; then
    echo "REPLAY INVALID: runner never started the sweep -- result means nothing, re-run"
    exit 2
  fi
  # 2. progress first: getting past the failing position clears THAT finding,
  #    even if the run later trips over a different one further along.
  far=$(grep -o "AUTOQA STEP room=[0-9]*" "$RLOG" | sed 's/.*room=//' | sort -n | tail -1)
  echo "furthest room reached: ${far:-none}"
  cleared=0
  if [ -n "$RPASS" ]; then
    if grep -q "AUTOQA DONE" "$RLOG"; then cleared=1
    elif [ -n "$far" ] && [ "$far" -gt "$RPASS" ]; then cleared=1; fi
  fi

  err=$(grep -E "AUTOQA FATAL|AUTOQA CAUGHT" "$RLOG" | head -6)
  if [ -n "$RPASS" ] && [ "$cleared" = "0" ]; then
    [ -n "$err" ] && echo "$err"
    echo "REPLAY: bug still reproduces at room $RPASS"; exit 1
  fi
  if [ -n "$err" ]; then
    echo "$err"
    if [ "$cleared" = "1" ]; then
      echo "REPLAY: original finding CLEARED (progressed past room $RPASS)"
      echo "        but a DIFFERENT error appeared further on -- triage it as a new finding"
      exit 3
    fi
    echo "REPLAY: bug still reproduces"; exit 1
  fi
  if [ "$cleared" = "1" ]; then echo "REPLAY: clean -- progressed past room $RPASS"; exit 0; fi
  echo "REPLAY: no error raised (pass a room index as arg 7 to also prove it got past a hang)"; exit 0
fi
OUT="tools/autoqa-report.txt"
LOGDIR="tools/autoqa-logs"
mkdir -p "$LOGDIR"
: > "$OUT"

room=0
inst=0
launch=0


echo "autoqa: mode=$MODE" | tee -a "$OUT"

while [ "$launch" -lt "$MAXLAUNCH" ]; do
  launch=$((launch+1))

  BARKLEY_AUTOQA="$MODE" \
  BARKLEY_AUTOQA_ROOM="$room" \
  BARKLEY_AUTOQA_INST="$inst" \
  BARKLEY_AUTOQA_FRAMES="${BARKLEY_AUTOQA_FRAMES:-600}" \
  npx @gamemaker/gm-cli@latest run BarkleyV110.yyp --target mac \
      >"$LOGDIR/run$launch.out" 2>&1 &
  pid=$!

  # The runner streams everything (show_debug_message + the fatal error) to
  # stdout, and a crash leaves no debug.log behind, so watch our own capture.
  LOG="$LOGDIR/run$launch.out"
  quiet=0
  last_size=-1
  for _ in $(seq 1 900); do
    sleep 1
    kill -0 "$pid" 2>/dev/null || break
    grep -q "AUTOQA DONE" "$LOG" 2>/dev/null && break
    size=$(wc -c <"$LOG" 2>/dev/null || echo 0)
    if [ "$size" = "$last_size" ]; then
      quiet=$((quiet+1))
      [ "$quiet" -ge 25 ] && break     # 25s with no new output => wedged
    else
      quiet=0; last_size=$size
    fi
  done

  pkill -f "Runner" 2>/dev/null
  kill "$pid" 2>/dev/null; wait "$pid" 2>/dev/null
  sleep 1

  if [ ! -s "$LOG" ]; then
    echo "launch $launch: runner produced no output -- aborting" | tee -a "$OUT"
    break
  fi

  seeds=$(grep -o "AUTOQA SEEDS game=[0-9]* monkey=[0-9]*" "$LOG" | head -1)
  gseed=$(sed -n 's/.*game=\([0-9]*\).*/\1/p' <<<"$seeds")
  mseed=$(sed -n 's/.*monkey=\([0-9]*\).*/\1/p' <<<"$seeds")
  # the harness persists fatal detail here, because stdout is lost when the
  # process dies mid-flush
  savedir=$(grep -o "AUTOQA SAVEDIR .*" "$LOG" | head -1 | sed 's/AUTOQA SAVEDIR //' | tr -d '\r')
  crashfile=""
  [ -n "$savedir" ] && [ -f "${savedir}autoqa-crash.txt" ] && crashfile="${savedir}autoqa-crash.txt"

  # errors caught in-engine: the sweep survived these and kept going
  grep "AUTOQA CAUGHT" "$LOG" | sed "s|^[^A]*AUTOQA CAUGHT |CAUGHT [replay: ./tools/autoqa.sh replay $MODE $room $inst $gseed $mseed] |" >> "$OUT"

  if [ "$CONTINUE" = "0" ] && grep -q "AUTOQA CAUGHT" "$LOG"; then
    echo "stopping at first finding (AUTOQA_CONTINUE=1 to keep going)" | tee -a "$OUT"
    break
  fi

  if grep -q "AUTOQA DONE" "$LOG"; then
    echo "sweep complete after $launch launch(es)" | tee -a "$OUT"
    break
  fi

  step=$(grep "AUTOQA STEP" "$LOG" | tail -1)
  fatal=$(grep -E "AUTOQA FATAL" "$LOG" | head -4)
  err=$(grep -A4 -E "ERROR in action|not set before reading" "$LOG" | head -12)

  if [ -n "$crashfile" ]; then
    { echo "=============================================================="
      echo "FATAL  (launch $launch)"
      echo "  last step: ${step:-<no step logged>}"
      sed 's/^/  /' "$crashfile"
      echo "  replay:    ./tools/autoqa.sh replay $MODE $room $inst $gseed $mseed $(sed -n 's/.*room=\([0-9]*\).*/\1/p' <<<"$step")"
    } | tee -a "$OUT"
    rm -f "$crashfile"
    [ "$CONTINUE" = "0" ] && { echo "stopping at first finding (AUTOQA_CONTINUE=1 to keep going)" | tee -a "$OUT"; break; }
  elif [ -n "$fatal" ] || [ -n "$err" ]; then
    { echo "=============================================================="
      echo "FATAL  (launch $launch)"
      echo "  last step: ${step:-<no step logged>}"
      echo "  replay:    ./tools/autoqa.sh replay $MODE $room $inst $gseed $mseed $(sed -n 's/.*room=\([0-9]*\).*/\1/p' <<<"$step")"
      echo "  inputs:    $(grep -c 'AUTOQA INPUT' "$LOG") logged, tail in $LOG"
      [ -n "$fatal" ] && echo "$fatal" | sed 's/^[^A]*AUTOQA/  AUTOQA/'
      [ -n "$err" ]   && echo "$err"   | sed 's/^/  /'
    } | tee -a "$OUT"
  elif ! grep -q "AUTOQA BEGIN" "$LOG"; then
    # runner never got as far as our object -- a flaky launch, not a finding.
    echo "launch $launch: runner never started the sweep, retrying same position" | tee -a "$OUT"
    continue
  else
    { echo "=============================================================="
      echo "UNEXPLAINED  (launch $launch)"
      echo "  last step: ${step:-<no step logged>}"
      echo "  The run ended without reporting an error. Do not treat this as"
      echo "  clean -- investigate before advancing past this position."
      echo "  replay:    ./tools/autoqa.sh replay $MODE $room $inst $gseed $mseed $(sed -n 's/.*room=\([0-9]*\).*/\1/p' <<<"$step")"
    } | tee -a "$OUT"
    [ "$CONTINUE" = "0" ] && break
  fi

  # resume one step past wherever we stopped
  r=$(sed -n 's/.*room=\([0-9]*\).*/\1/p' <<<"$step")
  i=$(sed -n 's/.*inst=\([0-9]*\).*/\1/p' <<<"$step")
  [ -n "$r" ] && room="$r"
  if [ "$MODE" = "interact" ] && [ -n "$i" ]; then
    inst=$((i+1))
  else
    room=$((room+1)); inst=0
  fi
done

echo
echo "report: $OUT"
echo "caught (survivable): $(grep -c '^CAUGHT' "$OUT")"
echo "fatal   (killed run): $(grep -c '^FATAL' "$OUT")"
