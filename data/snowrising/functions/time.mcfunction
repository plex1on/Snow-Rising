# SNOWRISING time


execute if score period internal matches 0..2 run function fm:clock

# slowball timer
execute as @a[tag=slowball_invulnerable] run scoreboard players add @s slowball_time 1
execute as @a[tag=slowball_invulnerable] if score @s slowball_time >= slowball_invulnerable global run function snowrising:system/extras/slowball/clear

# ice platform timer
execute as @e[tag=ice_platform] run scoreboard players add @s ice_platform_time 1
execute as @e[tag=ice_platform] if score @s ice_platform_time >= ice_platform_lifespan global at @s run function snowrising:system/extras/ice_platform/clear

# periods
## starter period
execute if score period internal matches 0 if score time_s internal >= starter_period global run function snowrising:system/period/grace
## grace period
execute if score period internal matches 1 if score time_s internal >= grace_period global run function snowrising:system/period/main

# time left
## starter period (0)
execute if score period internal matches 0 run scoreboard players operation time_left internal = starter_period global
execute if score period internal matches 0 run scoreboard players operation time_left internal -= time_s internal
## grace period (1)
execute if score period internal matches 1 run scoreboard players operation time_left internal = grace_period global
execute if score period internal matches 1 run scoreboard players operation time_left internal -= time_s internal

# bossbar
## pre-game (-1)
execute if score period internal matches -1 run bossbar set snowrising:main name "The games will begin shortly!"
execute if score period internal matches -1 run bossbar set snowrising:main color white
## starter period (0)
execute if score period internal matches 0 run bossbar set snowrising:main name ["",{"text":"Starter period \u0020 \u0020","color":"yellow"},{"score":{"name":"time_left","objective":"internal"},"color":"yellow","bold":true},{"text":" seconds left","color":"white"}]
execute if score period internal matches 0 run bossbar set snowrising:main color yellow
execute if score period internal matches 0 store result bossbar snowrising:main max run scoreboard players get starter_period global
execute if score period internal matches 0 store result bossbar snowrising:main value run scoreboard players get time_s internal
## grace period (1)
execute if score period internal matches 1 run bossbar set snowrising:main name ["",{"text":"Grace period \u0020 \u0020","color":"gold"},{"score":{"name":"time_left","objective":"internal"},"color":"gold","bold":true},{"text":" seconds left","color":"white"}]
execute if score period internal matches 1 run bossbar set snowrising:main color yellow
execute if score period internal matches 1 store result bossbar snowrising:main max run scoreboard players get grace_period global
execute if score period internal matches 1 store result bossbar snowrising:main value run scoreboard players get time_s internal
## main period (2)
execute if score period internal matches 2 run bossbar set snowrising:main name ["",{"text":"SNOW RISING \u0020 \u0020","color":"#9FFFFF","bold":true},{"text":"Currently at Y: ","color":"white"},{"score":{"name":"riser_height","objective":"internal"},"color":"aqua","bold":true}]
execute if score period internal matches 2 run bossbar set snowrising:main color blue
execute if score period internal matches 2 store result bossbar snowrising:main max run scoreboard players get rise_ticks global
execute if score period internal matches 2 store result bossbar snowrising:main value run scoreboard players get rise_time internal
## win (3)
execute if score period internal matches 3 run bossbar set snowrising:main name "Game over!"
execute if score period internal matches 3 run bossbar set snowrising:main color white
execute if score period internal matches 3 run bossbar set snowrising:main max 1
execute if score period internal matches 3 run bossbar set snowrising:main value 1

# last login
## pre-game (-1)
execute if score period internal matches -1 run gamemode adventure @a[gamemode=!adventure]
execute if score period internal matches -1 run effect give @a weakness 9999 255 true
execute if score period internal matches -1 run effect give @a resistance 9999 255 true
execute if score period internal matches -1 run effect give @a regeneration 9999 255 true
execute if score period internal matches -1 run effect give @a saturation 9999 255 true
execute if score period internal matches -1 run scoreboard players set @a last_login -1
## starter period (0)
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run gamemode survival @s[team=!admin,gamemode=!spectator]
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s weakness
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect give @s resistance 9999 255 true
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s regeneration
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run effect clear @s saturation
execute as @a if score period internal matches 0 unless score @s last_login matches 0 run scoreboard players set @s last_login 0
## grace period (1)
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run gamemode survival @s[team=!admin,gamemode=!spectator]
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s weakness
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s resistance
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s regeneration
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run effect clear @s saturation
execute as @a if score period internal matches 1 unless score @s last_login matches 1 run scoreboard players set @s last_login 1
## main period (2)
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run gamemode survival @s[team=!admin,gamemode=!spectator]
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s weakness
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s resistance
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s regeneration
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run effect clear @s saturation
execute as @a if score period internal matches 2 unless score @s last_login matches 2 run scoreboard players set @s last_login 2
## victory (3)
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run gamemode spectator @s[tag=!win,team=!admin]
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s weakness
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect give @s resistance 9999 255 true
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s regeneration
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run effect clear @s saturation
execute as @a if score period internal matches 3 unless score @s last_login matches 3 run scoreboard players set @s last_login 3