# Remove a life
scoreboard players remove @a[scores={deathCount=1..}] lifeDisplay 1
scoreboard players set @a[scores={deathCount=1..}] deathCount 0

# Update name color
team join hearts_4+ @a[scores={lifeDisplay=4..}]
team join hearts_3 @a[scores={lifeDisplay=3}]
team join hearts_2 @a[scores={lifeDisplay=2}]
team join hearts_1 @a[scores={lifeDisplay=1}]
team leave @a[scores={lifeDisplay=..0}]

# Handle death
gamemode spectator @a[scores={lifeDisplay=0}]
scoreboard players display numberformat @a[scores={lifeDisplay=0}] lifeDisplay blank

# Handle assassin related
function silentlife:assassin/check_assassin_succeeded

# Handle Items
execute as @a[scores={right_click_detection=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:item_model":"silentlife:warp_stone"},count:1}}] at @s run function silentlife:items/handle_warp
execute as @a[scores={right_click_detection=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:item_model":"silentlife:assassins_geode"},count:1}}] at @s run function silentlife:items/assassin_geode
execute as @a[scores={right_click_detection=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:item_model":"silentlife:full_summoning_stone"},count:1}}] at @s run function silentlife:items/summoning_stone
execute as @a[scores={right_click_detection=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:item_model":"silentlife:return_stone"},count:1}}] at @s run function silentlife:items/return_stone

# Dropped Immunity Idol
execute as @e[type=item, nbt={Item:{id:"minecraft:ominous_trial_key",count:1,components:{"minecraft:item_model":"silentlife:immunity_idol"}}}] at @s run function silentlife:items/replace_idol

# Tick ritual
function silentlife:ritual/tick

# Handle black hole
execute as @e[tag=black_hole, tag=black_hole_af, type=item_display, limit=1] at @s run execute as @a[distance=..3] run execute in minecraft:overworld run tp @s ~ ~ ~