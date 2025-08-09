# Check for spawn conditions & spawn accordingly (+ build area?): add bossbar display to players, make visible, edit max health

# Update vessel phase: reset health
execute as @e[type=block_display,tag=life_vessel_controller,limit=1,scores={vessel_per_phase_health=..0}] at @s run function life_vessel:phases/load_next

# Randomize RNG
execute store result score @e[type=block_display,tag=life_vessel_controller,limit=1] random run random value 1..100


# Manual Attacks
execute as @a[scores={manual_right_click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{"custom_tag":"basic_swing"}}}}] run execute if entity @e[tag=life_vessel, tag=phase_1, tag=!attacking] run function life_vessel:attacks/phase_1/basic_swing

execute as @a[scores={manual_right_click=1..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{"custom_tag_extra":"life_vessel_control"}}}}] run scoreboard players set @s manual_right_click 0

# # Chose random attack, in accordance with boss phase:
# # Phase 1 attacks:
# # NKG Flares
# execute as @e[type=block_display,tag=life_vessel_controller,limit=1,scores={random=1..100,vessel_attack_timer=200..,vessel_phase=1}] run execute as @e[tag=life_vessel, tag=phase_1, tag=!attacking] run function life_vessel:attacks/phase_1/nkg_flares

# # Increase attack timer
# execute if entity @e[tag=life_vessel] run scoreboard players add @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_attack_timer 1
# # Reset attack timer (10 seconds)
# execute if entity @e[tag=life_vessel, tag=!attacking] run scoreboard players set @e[type=block_display,tag=life_vessel_controller,limit=1,scores={vessel_attack_timer=200..}] vessel_attack_timer 0


# Update bossbar with per phase health:
# store health in score
execute store result score @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health run data get entity @e[tag=life_vessel, limit=1, sort=nearest] Health
# offset score to keep enemy from dying
scoreboard players remove @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health 30
# display offset score
execute store result bossbar minecraft:life_vessel value run scoreboard players get @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_per_phase_health