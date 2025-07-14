execute as @e[type=item_frame, tag=ritual_handler] at @s run playsound entity.dragon_fireball.explode master @a[distance=..20] ~ ~ ~ 1.6
execute as @e[type=item_frame, tag=ritual_handler] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.2 50

execute as @e[type=item_frame, tag=ritual_handler] at @s run summon item ~ ~ ~ {Item:{id:"warped_fungus_on_a_stick",components:{item_name:{text:"Summoning Stone", color:aqua}, item_model:"silentlife:full_summoning_stone", lore:["An ancient stone once used for rituals,","now imbued with life."]},count:1}}

#give advancement
execute as @e[type=item_frame, tag=ritual_handler] at @s run advancement grant @a[distance=..10] only silentlife:ritual_complete

# kill self
execute as @e[type=item_frame, tag=ritual_handler] at @s run setblock ~ ~ ~ air destroy