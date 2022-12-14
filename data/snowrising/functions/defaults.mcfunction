# SNOWRISING defaults


# general timings
scoreboard players set period internal -1

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1

# patch grindstone exploit
scoreboard players set patch_grindstone_exploit global 1

# world
worldborder set 10
worldborder center 0 0
effect clear @a
gamemode adventure @a[team=!spectator]
gamerule doWeatherCycle false


# periods
## starter period (1m)
scoreboard players set starter_period global 60
## grace period (30m)
scoreboard players set grace_period global 1800

# height limit
## riser will stop at this y level
## unlike in previous releases, this is no longer
## something you can disable
scoreboard players set rise_height_limit global 300

# rise ticks
## interval between rising
## lower than before due to starting at -64
scoreboard players set rise_ticks global 80

# track border distance
scoreboard players set border_distance global 15
scoreboard players set base_world_height internal 70

# teams
scoreboard players set teams global 0
scoreboard players set teams_count global 2

# passive snow
scoreboard players set passive_snow global 1

# sfx
scoreboard players set sfx global 1

# extras
## apply slowness near the riser
scoreboard players set slow_nearby_players global 1
scoreboard players set slow_nearby_players_distance global 2
## slowball
scoreboard players set slowball_invulnerable global 50
## ice platform
scoreboard players set ice_platform_lifespan global 60

# clear illegal blocks
## stored in #snowrising:illegal
## ~3 blocks from the riser
scoreboard players set clear_illegal_blocks global 1

# legacy mode
## resets some values to support pre-1.18
scoreboard players set legacy global 0

# eliminate on player disconnect
## if a player disconnects, they will be permanently
## eliminated from the game
scoreboard players set eliminate_on_disconnect global 0


scoreboard players set defaults internal 1