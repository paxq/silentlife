particle minecraft:portal ~ ~ ~ 0 0 0 8 250
playsound entity.enderman.teleport master @a[distance=..20]

bossbar remove minecraft:ritual

schedule function silentlife:schedules/ritual/complete_1 2s
schedule function silentlife:schedules/ritual/complete_2 4s
schedule function silentlife:schedules/ritual/complete_3 6s

# increment difficulty progress
scoreboard players add @e[type=text_display, tag=ritual_difficulty_progress, limit=1] general_variables 1
# increment difficulty
execute if entity @e[type=text_display, tag=ritual_difficulty_progress, limit=1, scores={general_variables=5..}] run scoreboard players add @e[type=text_display, tag=ritual_difficulty, limit=1, scores={general_variables=..2}] general_variables 1
execute as @e[type=text_display, tag=ritual_difficulty_progress, limit=1, scores={general_variables=10..}] run scoreboard players set @s general_variables 0