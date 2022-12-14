# SNOWRISING setup
## dynamically generated


# tellraw
## header
tellraw @s ["",{"text":"\nSNOW RISING\n","color":"#9FFFFF","bold":true}]
## intro
tellraw @s ["",{"text":"Before the game begins, check your options and invite everyone to the game. Hover over titles for more information.\n"}]
## options
tellraw @s ["",{"text":"Options:","color":"yellow"}]

# teams
## enabled
execute if score teams global matches 1.. run tellraw @s ["",{"text":"Teams \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Fight to the death together! Requires adding players to red/blue (or green if 3 teams)."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/teams/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score teams global matches 1.. run tellraw @s ["",{"text":"Teams \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Fight to the death together! Requires adding players to red/blue (or green if 3 teams)."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/teams/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# rise height limit
tellraw @s ["",{"text":"Rise height limit \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The maximum height limit the snow can reach."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/rise_height_limit/down"}},{"text":"  ","color":"white"},{"score":{"name":"rise_height_limit","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/rise_height_limit/up"}},{"text":" ","color":"dark_gray"}]

# rise ticks
tellraw @s ["",{"text":"Rise ticks \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"The interval between the snow rising (in ticks)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/rise_ticks/down"}},{"text":"  ","color":"white"},{"score":{"name":"rise_ticks","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/rise_ticks/up"}},{"text":" ","color":"dark_gray"}]

# starter period
tellraw @s ["",{"text":"Starter period \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"PvP is disabled, starts when the game begins (min. 10s)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/starter_period/down"}},{"text":"  ","color":"white"},{"score":{"name":"starter_period","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/starter_period/up"}},{"text":" ","color":"dark_gray"}]

# grace period
tellraw @s ["",{"text":"Grace period \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"PvP is enabled along with respawning (min 20m)."}]}},{"text":" ","color":"white"},{"text":"-","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/grace_period/down"}},{"text":"  ","color":"white"},{"score":{"name":"grace_period","objective":"global"}},{"text":"  ","color":"dark_gray"},{"text":"+","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/grace_period/up"}},{"text":" ","color":"dark_gray"}]

# passive snow
## enabled
execute if score passive_snow global matches 1.. run tellraw @s ["",{"text":"Passive snow \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Show some nice passive snow particles, disable globally for better performance :("}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/passive_snow/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score passive_snow global matches 1.. run tellraw @s ["",{"text":"Passive snow \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Show some nice passive snow particles, disable globally for better performance :("}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/passive_snow/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# cut clean
## enabled
execute if score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/cut_clean/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score cut_clean global matches 1.. run tellraw @s ["",{"text":"Cut Clean \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically smelts ores and cooks food."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/cut_clean/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# speed uhc
## enabled
execute if score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/speed_uhc/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score speed_uhc global matches 1.. run tellraw @s ["",{"text":"Speed UHC \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Automatically enchants tools with efficiency."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/speed_uhc/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

# legacy mode
## enabled
execute if score legacy global matches 1.. run tellraw @s ["",{"text":"Legacy mode (pre-1.18) \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Reverts the height limit and spawn height down to pre-1.18 values."}]}},{"text":"[","color":"white"},{"text":"✔","color":"green","bold":true},{"text":"]","color":"white"},{"text":"  ","color":"dark_gray"},{"text":"X","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/legacy/off"}},{"text":" ","color":"dark_gray"}]
## disabled
execute unless score legacy global matches 1.. run tellraw @s ["",{"text":"Legacy mode (pre-1.18) \u0020 \u0020","hoverEvent":{"action":"show_text","contents":[{"text":"Reverts the height limit and spawn height down to pre-1.18 values."}]}},{"text":" ","color":"dark_gray"},{"text":"✔","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function snowrising:setup/legacy/on"}},{"text":" ","color":"dark_gray"},{"text":" [","color":"white"},{"text":"X","color":"red","bold":true},{"text":"]","color":"white"}]

## notice
tellraw @s ["",{"text":"\nFor performance improvements, disable passive snow.\n","color":"gold"}]

## footer
tellraw @s ["",{"text":"\nOnce you're ready, run "},{"text":"/function snowrising:start","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function snowrising:start"}},{"text":" and let the games begin!\n"}]


scoreboard players set setup internal 1