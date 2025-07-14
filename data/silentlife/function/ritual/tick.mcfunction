# Check for ritual start
execute as @e[type=item, tag=!temp_ritual_handler, nbt={Item:{id:"minecraft:warped_fungus_on_a_stick", components:{"minecraft:item_model":"silentlife:empty_summoning_stone"}, count:1}}] at @s run execute if block ~ ~-1 ~ diamond_block run function silentlife:ritual/start


# If the glass is broken, kill glass entity & end ritual
execute as @e[type=item_frame, tag=ritual_handler] at @s run execute unless block ~ ~ ~ glass run function silentlife:ritual/stop
execute as @e[type=item_frame, tag=ritual_handler] at @s run execute unless block ~ ~-1 ~ diamond_block run function silentlife:ritual/stop

# Decrease score whenever an enemy dies ——> Handled by advancement

# Set bossbar to level based on score (1-12)
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=24..}] run bossbar set minecraft:ritual value 24
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=23}] run bossbar set minecraft:ritual value 23
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=22}] run bossbar set minecraft:ritual value 22
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=21}] run bossbar set minecraft:ritual value 21
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=20}] run bossbar set minecraft:ritual value 20
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=19}] run bossbar set minecraft:ritual value 19
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=18}] run bossbar set minecraft:ritual value 18
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=17}] run bossbar set minecraft:ritual value 17
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=16}] run bossbar set minecraft:ritual value 16
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=15}] run bossbar set minecraft:ritual value 15
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=14}] run bossbar set minecraft:ritual value 14
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=13}] run bossbar set minecraft:ritual value 13
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=12}] run bossbar set minecraft:ritual value 12
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=11}] run bossbar set minecraft:ritual value 11
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=10}] run bossbar set minecraft:ritual value 10
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=9}] run bossbar set minecraft:ritual value 9
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=8}] run bossbar set minecraft:ritual value 8
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=7}] run bossbar set minecraft:ritual value 7
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=6}] run bossbar set minecraft:ritual value 6
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=5}] run bossbar set minecraft:ritual value 5
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=4}] run bossbar set minecraft:ritual value 4
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=3}] run bossbar set minecraft:ritual value 3
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=2}] run bossbar set minecraft:ritual value 2
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=1}] run bossbar set minecraft:ritual value 1
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=..0}] run bossbar set minecraft:ritual value 0

# When wave 3 is beaten & score == 12: end ritual, break glass, spawn life
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] at @s run function silentlife:ritual/complete

# Tag glass entity based on wave number
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] run tag @s remove wave_3
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] run tag @s add wave_3
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] run tag @s remove wave_2
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=..0}] run tag @s add wave_2
execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=..0}] run tag @s remove wave_1
# Start wave based on tag and difficulty
# level 1
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=1}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] at @s run function silentlife:ritual/level_1/wave_1
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=1}] run scoreboard players set @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] ritual_progress 12

execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=1}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_1/wave_2
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=1}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_1/wave_3

# level 2
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=2}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] at @s run function silentlife:ritual/level_2/wave_1
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=2}] run scoreboard players set @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] ritual_progress 12

execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=2}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_2/wave_2
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=2}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_2/wave_3

# level 3
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=3}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] at @s run function silentlife:ritual/level_3/wave_1
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=3}] run scoreboard players set @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] ritual_progress 12

execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=3}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_3/wave_2
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=3}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_3/wave_3

# level 4
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=4}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] at @s run function silentlife:ritual/level_4/wave_1
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=4}] run scoreboard players set @e[type=item_frame, tag=ritual_handler, tag=wave_1, scores={ritual_progress=999}] ritual_progress 12

execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=4}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_2, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_4/wave_2
execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=4}] run execute as @e[type=item_frame, tag=ritual_handler, tag=wave_3, scores={ritual_progress=..0}] at @s run function silentlife:ritual/level_4/wave_3


# Reset score for each wave
execute as @e[type=item_frame, tag=ritual_handler, scores={ritual_progress=..0}] run scoreboard players set @s ritual_progress 12