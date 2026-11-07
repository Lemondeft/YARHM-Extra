# YARHM Extra

Fork of **YARHM 1.22** (Yet Another Random Hub Menu) by Aetherion, stripped down
to the core UI and rebuilt around three games.

Upstream: <https://github.com/Joystickplays/psychic-octo-invention> (GPL-3.0)

## What changed

Removed:

- Game modules: Forsaken, Murder Mystery 2, Flee the Facility, Brookhaven

Kept & restored: the UI, floating buttons, config/PointSave, ESP indicator, fly
utility, custom-module loader, and the Universal module, plus the **AdLoader**
(ad campaign UI + click/impression reporting to `yarhm.com`) and the
**ScriptBlox ingest** telemetry, restored verbatim from the original
ScriptBlox distribution to respect the upstream author.

Added: `EXTRA_GAMES` registry at the bottom of `yarhm-extra.lua`. It registers
only the module matching the current `game.GameId`; Universal stays available
everywhere. Outside the three games, Universal is the only entry in the list.

Real game modules so far:

| Module | Features |
| --- | --- |
| Jujutsu Shenanigans | target lock, follow + auto M1, auto skill rotation (Z/X/C/V/R), auto block (holds F on attack anims), void kill (damage remote if present, else sky lift) |
| The Strongest Battlegrounds | target lock, ability key, Bring, Kill (void Y≈695), Skydive (void Y≈5631), arena teleports, anti-AFK |

Mechanics ported from public scripts: L04728/JS-Lite + zyawalid-jpg/jjs-v3
(JJS) and failur0/StrongestBattlegrounds (TSB). Blox Fruits remains a
placeholder until features are written.

## Games

| Module | Universe (GameId) | Place IDs |
| --- | --- | --- |
| Jujutsu Shenanigans | 3808223175 | 10450270085 |
| The Strongest Battlegrounds | 3808081382 | 10449761463 |
| Blox Fruits | 994732206 | 2753915549, 4442272183, 7449423635 |

Use `game.GameId` (universe), not `game.PlaceId`. The ids above were resolved
through `https://apis.roblox.com/universes/v1/places/<placeId>/universe`.

## Adding a module

```lua
local module = {Name = "My Game", gameId = 1234567890}
table.insert(module, {Type = "Toggle", Args = {"Feature", function(Self, state) end}})
table.insert(getgenv().Modules, module)
```

Supported item types: `Text`, `Button`, `ButtonGrid`, `Input`, `Toggle`,
`Range`. Add `module.BG_TASK = function() ... end` for a background loop.

The three entries in `EXTRA_GAMES` currently render a placeholder. Real
feature code goes in the `module` list for each game.

## Running

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/<user>/YARHM-Extra/main/yarhm-extra.lua"))()
```

Executors only. The file is self-contained; there is no remote module loader.

## License

GPL-3.0, same as upstream. Original work © Aetherion / Joystickplays.
