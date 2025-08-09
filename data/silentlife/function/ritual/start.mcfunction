# tag @s add temp_ritual_handler

# # setup ritual bossbar
# bossbar add ritual Ritual
# bossbar set minecraft:ritual style notched_12
# bossbar set minecraft:ritual max 12
# bossbar set minecraft:ritual value 12
# bossbar set minecraft:ritual players @a[distance=..20]

# execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=3}] run bossbar set minecraft:ritual color pink
# execute if entity @e[type=text_display, tag=ritual_difficulty, scores={general_variables=4}] run bossbar set minecraft:ritual color red

# # Spawn glass & entity (block display w/ custom texture)
# schedule function silentlife:ritual/start_2 10t

# # give advancement
# advancement grant @a[distance=..5] only silentlife:ritual_summon


# No life gain
title @a[distance=..10] actionbar "Something powerful is preventing you from starting a ritual."