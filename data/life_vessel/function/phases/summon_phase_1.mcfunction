# Summon vessel / hitbox
summon blaze ~ ~ ~ {HasVisualFire:0b,Silent:1b,NoAI:1b,AbsorptionAmount:500f,Health:250f,Tags:["life_vessel","phase_1"],active_effects:[{id:"minecraft:absorption",amplifier:255,duration:-1,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:scale",base:2}]}
rotate @e[tag=life_vessel, sort=nearest, limit=1] 0 0

# Summon appendages
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^ ^2 ^ {Tags:["vessel_appendage","vessel_head"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0f,-0.75f],scale:[2.5f,2.5f,2.5f]}}
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^ ^ ^ {Tags:["vessel_appendage","vessel_torso"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,-5f,-0.5f],scale:[5f,6f,2f]}}

execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^3 ^ ^ {Tags:["vessel_appendage","vessel_left_arm_top"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2f,-0.5f],scale:[2f,3f,2f]}}
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^3 ^-3 ^ {Tags:["vessel_appendage","vessel_left_arm_bottom"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2f,-0.5f],scale:[2f,3f,2f]}}
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^-3 ^ ^ {Tags:["vessel_appendage","vessel_right_arm_top"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-2f,-0.5f],scale:[2f,3f,2f]}}
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^-3 ^-3 ^ {Tags:["vessel_appendage","vessel_right_arm_bottom"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-2f,-0.5f],scale:[2f,3f,2f]}}

execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^1.5 ^-6 ^ {Tags:["vessel_appendage","vessel_left_leg"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-5f,-0.5f],scale:[2.5f,6f,2f]}}
execute as @e[tag=life_vessel, sort=nearest, limit=1] at @s run summon block_display ^-1.5 ^-6 ^ {Tags:["vessel_appendage","vessel_right_leg"],block_state:{Name:"minecraft:stone"}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-5f,-0.5f],scale:[2.5f,6f,2f]}}

# store health in score
execute store result score @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health run data get entity @e[tag=life_vessel, limit=1, sort=nearest] Health
# offset score to keep enemy from dying
scoreboard players remove @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health 30
# set bossbar max
execute store result bossbar minecraft:life_vessel max run scoreboard players get @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health