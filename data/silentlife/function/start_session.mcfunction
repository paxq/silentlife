execute as @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] run tag @s add ignore
execute as @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] run title @a[tag=administrator] actionbar "A Session is already running."

execute if entity @s[tag=administrator] run scoreboard players set @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=-3200..}] session_timer 3600
execute if entity @s[tag=administrator] run tag @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=0..}] add running

execute if entity @s[tag=administrator] run execute as @e[type=text_display, tag=session_timer, tag=running, tag=!ignore, limit=1, scores={session_timer=0..}] run function silentlife:schedules/session/decrease_time
execute if entity @s[tag=administrator] run execute as @e[type=text_display, tag=session_timer, tag=running, tag=!ignore, limit=1, scores={session_timer=0..}] run title @a actionbar "The Session has started."

execute if entity @s[tag=administrator] run advancement revoke @a only silentlife:utils/assassin_kill
execute if entity @s[tag=administrator] run advancement revoke @a only silentlife:utils/assassin_fail

execute as @a run scoreboard players set @s perSessionDeathCount 0

execute if entity @s[tag=administrator] run execute as @e[type=text_display, tag=session_timer, tag=running, tag=!ignore, limit=1, scores={session_timer=0..}] run function silentlife:assassin/select_assassins

tag @e remove ignore


# drop shiny rocks (NOW GIVES AT THE SAME TIME AS ASSASSIN)
# execute as @r[tag=!assassin] at @s run summon item ~1 ~5 ~1 {Item:{id:"minecraft:raw_copper",count:1,components:{item_name:{"color":"green","text":"Shiny Rock"},item_model:"silentlife:assassins_geode",lore:["A shiny rock or geode."]}}}
