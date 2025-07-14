scoreboard players set @s right_click_detection 0

advancement grant @s[advancements={silentlife:gain_life=false}] only silentlife:gain_life
advancement grant @s[advancements={silentlife:gain_life_6=false}, scores={lifeDisplay=5}] only silentlife:gain_life_6

execute as @s[scores={lifeDisplay=6..}] run title @s actionbar "You cannot gain more lives with this item."

execute as @s[scores={lifeDisplay=..5}] run clear @s warped_fungus_on_a_stick[item_model="silentlife:full_summoning_stone"] 1
execute as @s[scores={lifeDisplay=..5}] run scoreboard players add @s lifeDisplay 1

execute as @s[scores={lifeDisplay=..5}] at @s run playsound block.amethyst_block.chime master @s
execute as @s[scores={lifeDisplay=..5}] at @s run playsound block.amethyst_cluster.break master @s