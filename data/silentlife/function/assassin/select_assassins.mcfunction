tag @a remove assassin
tag @a remove assassin_1
tag @a remove assassin_2
tag @a remove assassin_target

tag @r[gamemode=survival] add assassin
tag @r[tag=!assassin, gamemode=survival] add assassin_target

# # ONE-TIME EVERYONE ASSASSIN
# tag CEOshoota add assassin
# tag CEOshoota add assassin_1
# tag CEOshoota add assassin_2_target

# tag Secretkeeper add assassin
# tag Secretkeeper add assassin_2
# tag Secretkeeper add assassin_1_target

# tag _paxq add assassin
# tag _paxq add assassin_3
# tag _paxq add assassin_4_target

# tag antistarr17 add assassin
# tag antistarr17 add assassin_4
# tag antistarr17 add assassin_5_target

# tag LukeGamez1414 add assassin
# tag LukeGamez1414 add assassin_5
# tag LukeGamez1414 add assassin_3_target


title @a[tag=assassin] title ["You are the ",{"color":"red","text":"Assassin"}]

schedule function silentlife:schedules/assassin/reveal_target_1 1s
schedule function silentlife:schedules/assassin/reveal_target_2 2s

advancement grant @a[tag=assassin, advancements={silentlife:assassin_chosen=true}] only silentlife:assassin_chosen_twice
advancement grant @a[tag=assassin] only silentlife:assassin_chosen

execute as @a[tag=assassin] at @s run function silentlife:assassin/summon_probes

clear @a warped_fungus_on_a_stick[item_model="silentlife:assassins_geode"]
clear @a raw_copper[item_model="silentlife:assassins_geode"]
execute as @a[tag=assassin] run function admin:give/assassins_geode
# execute as @r[tag=!assassin] at @s run function admin:give/shiny_rock

# # ONE-TIME EVERYONE ASSASSIN
# execute as @a[tag=assassin_1] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_1
# execute as @a[tag=assassin_2] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_2
# execute as @a[tag=assassin_3] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_3
# execute as @a[tag=assassin_4] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_4
# execute as @a[tag=assassin_5] run loot give @s loot silentlife:one_time_everyone_assassin/assassins_geode_5