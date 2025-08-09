# # Success
# execute as @a[tag=assassin_target, scores={perSessionDeathCount=1..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succeed
# execute as @a[tag=assassin_target, scores={perSessionDeathCount=1..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill

# # Failure
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail

# # Death by target
# execute as @a[tag=assassin_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15, tag=assassin, scores={perSessionDeathCount=1..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try

# # ONE-TIME EVERYONE ASSASSIN
# Success
execute as @a[tag=assassin_1_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_1, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succeed
execute as @a[tag=assassin_1_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_1, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill
# Failure
execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_1, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_1, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail
# Death by target
execute as @a[tag=assassin_1_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15,tag=assassin_1, scores={deathCount=0..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try

# Success
execute as @a[tag=assassin_2_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_2, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succeed
execute as @a[tag=assassin_2_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_2, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill
# Failure
execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_2, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_2, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail
# Death by target
execute as @a[tag=assassin_2_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15,tag=assassin_2, scores={deathCount=0..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try

# # Success
# execute as @a[tag=assassin_3_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_3, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succed
# execute as @a[tag=assassin_3_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_3, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill
# # Failure
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_3, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_3, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail
# # Death by target
# execute as @a[tag=assassin_3_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15,tag=assassin_3, scores={deathCount=0..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try

# # Success
# execute as @a[tag=assassin_4_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_4, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succed
# execute as @a[tag=assassin_4_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_4, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill
# # Failure
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_4, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_4, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail
# # Death by target
# execute as @a[tag=assassin_4_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15,tag=assassin_4, scores={deathCount=0..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try

# # Success
# execute as @a[tag=assassin_5_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_5, advancements={silentlife:utils/assassin_fail=false}] only silentlife:assassin_succed
# execute as @a[tag=assassin_5_target, scores={deathCount=0..}] run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[tag=assassin_5, advancements={silentlife:utils/assassin_fail=false}] only silentlife:utils/assassin_kill
# # Failure
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_5, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_failed
# execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=..0}] run advancement grant @p[tag=assassin_5, advancements={silentlife:utils/assassin_kill=false}] only silentlife:utils/assassin_fail
# # Death by target
# execute as @a[tag=assassin_5_target] at @s run execute if entity @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=1..}] run advancement grant @p[distance=0..15,tag=assassin_5, scores={deathCount=0..}, advancements={silentlife:utils/assassin_kill=false}] only silentlife:assassin_nice_try