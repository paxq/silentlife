# Summon vessel
summon wither_skeleton ~ ~ ~ {Silent:1b,NoAI:1b,Health:50f,Tags:["life_vessel","phase_2"],attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:scale",base:0.6}]}

# store health in score
execute store result score @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health run data get entity @e[tag=life_vessel, limit=1, sort=nearest] Health
# offset score to keep enemy from dying
scoreboard players remove @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health 30
# set bossbar max
execute store result bossbar minecraft:life_vessel max run scoreboard players get @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health