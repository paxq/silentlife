tag @a remove assassin
tag @a remove assassin_1
tag @a remove assassin_2

tag @a remove assassin_target
tag @a remove assassin_1_target
tag @a remove assassin_2_target

tag @r[gamemode=survival] add assassin
tag @p[gamemode=survival, tag=assassin] add assassin_1

tag @r[gamemode=survival, tag=!assassin] add assassin_2
tag @p[gamemode=survival, tag=assassin_2] add assassin

tag @r[tag=!assassin, gamemode=survival] add assassin_target
tag @p[tag=assassin_target, gamemode=survival] add assassin_1_target

tag @r[tag=!assassin_1_target, gamemode=survival] add assassin_2_target
tag @p[tag=assassin_2_target, gamemode=survival] add assassin_target

# DEBUG
tellraw @p[tag=administrator, name="_paxq"] ["Assassins: ", {"selector":"@a[tag=assassin]","separator":", "}]
tellraw @p[tag=administrator, name="_paxq"] ["Assassin targets: ", {"selector":"@a[tag=assassin_target]","separator":", "}]
tellraw @p[tag=administrator, name="_paxq"] ["Assassin 1: ", {"selector":"@p[tag=assassin_1]"}, "Target: ", {"selector":"@p[tag=assassin_1_target]"}]
tellraw @p[tag=administrator, name="_paxq"] ["Assassin 2: ", {"selector":"@p[tag=assassin_2]"}, "Target: ", {"selector":"@p[tag=assassin_2_target]"}]


title @a[tag=assassin] title ["You are the ",{"color":"red","text":"Assassin"}]

schedule function silentlife:schedules/assassin/reveal_target_1 1s
schedule function silentlife:schedules/assassin/reveal_target_2 2s

advancement grant @a[tag=assassin, advancements={silentlife:assassin_chosen=true}] only silentlife:assassin_chosen_twice
advancement grant @a[tag=assassin] only silentlife:assassin_chosen

execute as @a[tag=assassin] at @s run function silentlife:assassin/summon_probes

clear @a warped_fungus_on_a_stick[item_model="silentlife:assassins_geode"]
clear @a raw_copper[item_model="silentlife:assassins_geode"]
execute as @a[tag=assassin] run function admin:give/assassins_geode
execute as @r[tag=!assassin] at @s run function admin:give/shiny_rock

# # ONE-TIME EVERYONE ASSASSIN
# execute as @a[tag=assassin_1] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_1
# execute as @a[tag=assassin_2] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_2
# execute as @a[tag=assassin_3] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_3
# execute as @a[tag=assassin_4] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_4
# execute as @a[tag=assassin_5] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_5