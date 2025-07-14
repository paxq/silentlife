execute if entity @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=0..}] run title @a[tag=administrator] actionbar "There is no session running to end."

execute if entity @s[tag=administrator] run scoreboard players set @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=-0..}] session_timer 0
execute if entity @s[tag=administrator] as @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] run title @a actionbar "The Session has ended."

execute if entity @s[tag=administrator] run tag @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] remove running

# end timer and display
execute if entity @s[tag=administrator] as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=0..}] run schedule clear silentlife:schedules/session/decrease_time
execute if entity @s[tag=administrator] run function silentlife:schedules/session/display_time

execute if entity @s[tag=administrator] run execute as @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=0..}] run scoreboard players remove @p[tag=assassin, advancements={silentlife:utils/assassin_kill=false}] lifeDisplay 1

tag @a remove assassin
tag @a remove assassin_target
tag @e remove ignore