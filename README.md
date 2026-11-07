# YARHM Extra

**YARHM Extra** is a fork of [YARHM 1.22](https://github.com/Joystickplays/psychic-octo-invention)
(Yet Another Random Hub Menu) by Aetherion — a multi-game exploit hub for
Roblox, run through executors.

The fork keeps the original hub UI, config system, ESP, fly, and theme stack
intact, removes every built-in game module, and ships its own modules for the
games below. The upstream author's **AdLoader** and **ScriptBlox ingest**
telemetry are restored verbatim — the fork stays on the original authors'
monetization and analytics so credit goes where credit is due.

```
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lemondeft/YARHM-Extra/main/yarhm-extra.lua"))()
```

---

## Changes vs upstream YARHM 1.22

| Removed | Kept / restored |
| --- | --- |
| Forsaken, Murder Mystery 2, Flee the Facility, Brookhaven game modules | Hub UI, floating buttons, config + `PointSave`, ESP indicator, fly utility, theme system, custom-module loader, Universal module |
| — | **AdLoader** (YARHM ad-campaign UI + click/impression reporting to `yarhm.com`) — restored byte-for-byte from the public ScriptBlox build |
| — | **ScriptBlox ingest** telemetry — restored byte-for-byte (same project id + version) |
| — | `EXTRA_GAMES` registry at the bottom of `yarhm-extra.lua` — per-game module registration |

Rebranding: `YARHM Extra` in the ScreenGui, menu title, and script header; the
in-game credit line still reads the hub's original credit text.

The Universal module (walkspeed/FOV loop, ctrl-click teleport, fly, ESP hookups)
ships in every game and stays available alongside the fork's game modules.

---

## Games

Inline modules only register when their `game.GameId` (universe id, not
place id) matches. Outside of these games the hub loads with **Universal
only**.

| Module | Universe (GameId) | Place IDs | What's inside |
| --- | --- | --- | --- |
| Jujutsu Shenanigans | `3808223175` | `10450270085` | target lock · follow + auto M1 · auto skill rotation (Z/X/C/V/R, editable) · auto block (holds F on attack anims) · void kill (damage remote if found, else sky-lift) |
| The Strongest Battlegrounds | `3808081382` | `10449761463` | target lock · ability key (1–4) · Bring · Kill (void Y≈695) · Skydive (void Y≈5631) · arena teleports (Center/Arena/Mountain) · anti-AFK |
| Blox Fruits | `994732206` | `2753915549` · `4442272183` · `7449423635` | placeholder for now — features land when written |

Mechanics are ported from public scripts rather than invented remotes:

- **JJS** — [`L04728/JS-Lite`](https://github.com/L04728/JS-Lite) (key-based
  auto-block/combo) and [`zyawalid-jpg/jjs-v3`](https://github.com/zyawalid-jpg/jjs-v3)
  (`__namecall` remote discovery, damage payload, black-flash combo paths).
- **TSB** — [`failur0/StrongestBattlegrounds`](https://github.com/failur0/StrongestBattlegrounds)
  (keypress skill priming, close-distance grab, fixed void CFrames, arena teleports).

Everything the modules touch is still just remote/animation/CFrame
manipulation from those public scripts — no new exploit surface is added; it
stays buggy wherever the games break their own stability.

---

## Adding a module

Copy the pattern the fork's game modules already use — build a table, push it
onto `getgenv().Modules`, and if it runs its own loop, expose `BG_TASK`
(the fork's `EXTRA_routine` auto-spawns it for built-in modules; the upstream
loader only spawns it for custom modules):

```lua
local module = {Name = "My Game", gameId = 1234567890}

table.insert(module, {Type = "Text", Args = {"<font color='#FFFF00'>My Game</font> | YARHM Extra"}})

table.insert(module, {
  Type = "Toggle",
  Args = {"Feature", function(Self, state)
    -- state == true/false
  end}
})

table.insert(module, {
  Type = "Button",
  Args = {"Do a thing", function(Self)
  end}
})

table.insert(module, {
  Type = "ButtonGrid",
  Toggleable = true, -- recolor for me; I'll keep my own state table
  Args = {3, { -- 3 columns
    First_things = function(Self) end,
    Second_things = function(Self) end,
  }}
})

table.insert(module, {
  Type = "Input",
  Args = {"Placeholder", "Button label", function(Self, text) end}
})

table.insert(module, {
  Type = "Range",
  Args = {"Label", 50, 350, 10, function(Self, value) end}
})

module["BG_TASK"] = function()
  while true do
    task.wait(0.05)
    -- per-tick combat loop, auto-block watch, etc.
  end
end

table.insert(getgenv().Modules, module)
```

Notes:

- `module["gameId"] = 0` on a custom module = loads in every game.
- `Type = "Text"` accepts an optional `"center"` as its second arg when you
  want centered text instead of left-aligned.
- `_` inside `ButtonGrid` **key names** becomes spaces in the label
  (`Kill_Void` renders as *Kill Void*).
- Notifications: `getgenv().YARHMFUNCTIONS.notification("message")`.
- Theme/helper APIs live under `getgenv().YARHMFUNCTIONS` and
  `getgenv().ThemeManager` — the upstream hub sets both.

## Supporting / unloading

- Everything self-contained — no remote module loader, no key system
  (the fork is keyless like the original ScriptBlox build).
- The AdLoader + telemetry are per-menu-session like upstream: they run when
  the hub UI loads, and can be disabled only by editing the file.

---

## Running, updating, hosting

1. Executors only — the file targets the `CoreGui`/executor environment
   (`getgenv`, `VIM`, `VU`, `keypress` fallbacks are all standard).
2. The script is one self-contained `loadstring` file; update = `git push`
   to `main`, executors pick it up next join. No caching layer to break.
3. To host it anywhere else, it's a single static text file — GitHub raw,
   ScriptBlocs-style rawscripts mirrors, any plain-text CDN. Never paste minified
   URLs behind auth: the `HttpGet` fetch must be anonymous.

Test the load once per change:

```lua
local ok, err = loadstring(game:HttpGet("https://raw.githubusercontent.com/Lemondeft/YARHM-Extra/main/yarhm-extra.lua"))() -- errors here = broken push
```

---

## Credits

- **Aetherion / Joystickplays** — original YARHM (this fork imports its hub UI,
  module API, PointSave, Universal module, ad + telemetry system).
- **Lemondeft** — fork maintainer: game-module rework (JJS / TSB), ported
  mechanics research, restored upstream loader code paths, registry rewrite.
- Mechanics-adapted scripts: JS-Lite, jjs-v3, failur0/StrongestBattlegrounds
  (linked above).

Upstream: <https://github.com/Joystickplays/psychic-octo-invention>

## License

GPL-3.0, same as upstream. Derivative work © Aetherion / Joystickplays; fork
changes © 2026 Lemondeft. See [LICENSE](LICENSE).

## Disclaimer

For private use against your own account only. Using any executor hub on
public servers risks account moderation. The fork does not touch the games'
server code — it operates only on what the executor can see.
