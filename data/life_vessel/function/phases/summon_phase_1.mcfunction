# Summon vessel
summon blaze ~ ~ ~ {HasVisualFire:0b,Silent:1b,NoAI:1b,AbsorptionAmount:500f,Health:250f,Tags:["life_vessel","phase_1"],active_effects:[{id:"minecraft:absorption",amplifier:255,duration:-1,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:scale",base:2}]}

# store health in score
execute store result score @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health run data get entity @e[tag=life_vessel, limit=1, sort=nearest] Health
# offset score to keep enemy from dying
scoreboard players remove @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health 30
# set bossbar max
execute store result bossbar minecraft:life_vessel max run scoreboard players get @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health