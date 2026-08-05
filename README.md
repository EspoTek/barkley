# Barkley, Shut Up and Jam: Gaiden — Modern Port

The original source code for *Barkley, Shut Up And Jam: Gaiden* (Tales of Game's, 2008),
ported to modern GameMaker so it runs natively on current machines (including Apple
Silicon Macs) and, experimentally, in the browser.

## Branches

- **`master`** — the untouched "museum piece": the original GameMaker 6.1 source
  (`GM 6.1/BarkleyV110.gm6`, code verified line-for-line as ground truth) plus the
  legacy GM 8.1 / GMS 1.4 conversions exactly as they were released.
- **`modern-port`** — the playable modernization. The GMS 1.4 tree was repaired,
  imported into GameMaker 2024, and fixed forward until the game runs. The original
  game logic is preserved; only engine-compatibility code was changed.

## Running the game (macOS)

Requirements: [Node.js](https://nodejs.org) (for `npx`). No GameMaker account needed —
the CLI provisions a guest license and downloads the runtime on first use.

```sh
cd "GMS 1.4 (conv, broken)/BarkleyV110.gmx/BarkleyV110"
npx @gamemaker/gm-cli@latest run BarkleyV110.yyp --target mac
```

The first run compiles everything (a couple of minutes); later runs are much faster.
`compile` instead of `run` builds without launching; `package` produces a distributable app.

## Display

- The window is freely resizable and supports the native macOS fullscreen button.
- The game always renders at its native 320×240 and is upscaled with
  nearest-neighbour filtering (chonky pixels).
- **Settings → SCALING** chooses between **Fit Window** (fill the window, aspect
  preserved) and **Integer** (strict whole-number upscaling with black borders).
- **Settings → SCREEN** toggles windowed/fullscreen; the old 1x/2x/3x window sizes
  are gone.

## Controls

Keyboard, rebindable in the settings menu (defaults: arrows + the keys shown there).
Gamepad support is planned. Saves and config are written next to the game
(`Save*.sav`, `config.txt`, `controls.txt` — delete the latter two to reset settings).

## Notable fixes over the 2008 release

- The official v1.20 (2014) "Vinceborg laser" sound-spam crash fix — famous for
  crashing live at AGDQ 2014 — is applied (this source predates the patch).
- The launch-era music/DLL failure cascade, joypad garbage-input glitch, and
  320×240 exclusive-fullscreen problems are gone by construction: the port uses
  the engine's native audio, input, and windowing.

## License

The game and its source were released by Tales of Game's under
**CC BY-NC 4.0** — do not sell this or host it commercially. This repo builds on the
source preservation work of [sanlor/Barkley1_Original](https://github.com/sanlor/Barkley1_Original).

`You don't need a reason to help people.`
