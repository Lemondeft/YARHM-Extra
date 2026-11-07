# YARHM Extra

Fork of **YARHM 1.22** by Aetherion ([ScriptBlox](https://scriptblox.com/script/Universal-Script-YARHM-12403) · [upstream repo](https://github.com/Joystickplays/psychic-octo-invention)). Same hub, same GPL-3.0, ads and ScriptBlox telemetry kept to support the original authors.

Scrapped the original game modules; adds its own:

| Module | GameId | Features |
| --- | --- | --- |
| Jujutsu Shenanigans | 3808223175 | target picker (expanding list), follow + auto M1, auto skills, auto dodge, auto black flash, auto block, untargetable hop, auto void kill (skill loop) |
| The Strongest Battlegrounds | 3808081382 | target picker (expanding list), follow + auto M1, untargetable hop, bring, kill (void, auto-skill), skydive, TP to target, arena TP, anti-AFK |
| Blox Fruits | 994732206 | placeholder for now |

## Run

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Lemondeft/YARHM-Extra/main/yarhm-extra.lua"))()
```

## Adding a module

```lua
local module = {Name = "My Game", gameId = 1234567890}
table.insert(module, {Type = "Toggle", Args = {"Feature", function(Self, state) end}})
table.insert(module, {Type = "Button", Args = {"Do thing", function(Self) end}})
table.insert(module, {Type = "Input", Args = {"Placeholder", "Set", function(Self, text) end}})
table.insert(module, {Type = "Range", Args = {"Label", 50, 350, 10, function(Self, value) end}})
table.insert(module, {Type = "ButtonGrid", Args = {3, {Name_one = function(Self) end, Name_two = function(Self) end}}})
module["BG_TASK"] = function() while true do task.wait(0.05) end end
table.insert(getgenv().Modules, module)
```

Types: `Text`, `Button`, `ButtonGrid`, `Input`, `Toggle`, `Range`. `_` in grid names becomes spaces. `BG_TASK` runs as a coroutine per module.

## License

GPL-3.0, same as upstream. Original work © Aetherion / Joystickplays; fork changes © Lemondeft.
