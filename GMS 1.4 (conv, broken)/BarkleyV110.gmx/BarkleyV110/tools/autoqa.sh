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
#
# Results land in tools/autoqa-report.txt.

set -uo pipefail
cd "$(dirname "$0")/.."

MODE="${1:-rooms}"
MAXLAUNCH="${2:-400}"
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

  if grep -q "AUTOQA DONE" "$LOG"; then
    echo "sweep complete after $launch launch(es)" | tee -a "$OUT"
    break
  fi

  step=$(grep "AUTOQA STEP" "$LOG" | tail -1)
  err=$(grep -A4 -E "ERROR in action|not set before reading" "$LOG" | head -12)

  if [ -n "$err" ]; then
    { echo "=============================================================="
      echo "CRASH  (launch $launch)"
      echo "  at: ${step:-<no step logged>}"
      echo "$err" | sed 's/^/  /'
    } | tee -a "$OUT"
  else
    echo "launch $launch: no error found; sweep stalled at ${step:-<none>}" | tee -a "$OUT"
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
grep -c "^CRASH" "$OUT" | xargs echo "crashes recorded:"
