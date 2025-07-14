execute as @e[type=item, tag=temp_ritual_handler] at @s run setblock ~ ~ ~ glass
execute as @e[type=item, tag=temp_ritual_handler] at @s run summon item_frame ~ ~ ~ {Tags:["ritual_handler"],Silent:1b,Facing:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:ice",count:1,components:{"minecraft:item_model":"silentlife:summoning_stone_3d"}}}

execute as @e[type=item, tag=temp_ritual_handler] run kill @s

# set score
scoreboard players set @e[type=item_frame, tag=ritual_handler] ritual_progress 999
tag @e[type=item_frame, tag=ritual_handler] add wave_1