gamemode survival @a

scoreboard players set @a lifeDisplay 3
scoreboard players display numberformat @a[scores={lifeDisplay=-1..}] lifeDisplay

title @a title ""
title @a subtitle "The Game will begin in..."
schedule function silentlife:schedules/start_countdown/three 1s
schedule function silentlife:schedules/start_countdown/two 2s
schedule function silentlife:schedules/start_countdown/one 3s
schedule function silentlife:schedules/start_countdown/begin 4s
schedule function silentlife:assassin/select_assassins 6.5s

# Start timer
tag @e[type=text_display, tag=session_timer, tag=!running, limit=1, scores={session_timer=0..}] add running
execute as @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] run function silentlife:schedules/session/decrease_time

# Give advancement
advancement grant @a only silentlife:root


# add top hat
item replace entity @r armor.head with purple_stained_glass[equippable={slot:"head",dispensable:true,equip_on_interact:true,swappable:true,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1},unbreakable={},tooltip_display={hidden_components:["enchantments","unbreakable","equippable"]},item_name={"color":"dark_purple","italic":false,"text":"Invisible Top hat"},item_model="minecraft:air"] 1
item replace entity @r armor.head with purple_stained_glass[equippable={slot:"head",dispensable:true,equip_on_interact:true,swappable:true,damage_on_hurt:false},enchantments={"minecraft:binding_curse":1},unbreakable={},tooltip_display={hidden_components:["enchantments","unbreakable","equippable"]},item_name={"color":"dark_purple","italic":false,"text":"Invisible Top hat"},item_model="minecraft:air"] 1