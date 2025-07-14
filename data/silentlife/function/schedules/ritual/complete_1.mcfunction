execute as @e[type=item_frame, tag=ritual_handler] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 8 350
execute as @e[type=item_frame, tag=ritual_handler] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.2 20
execute as @e[type=item_frame, tag=ritual_handler] at @s run playsound entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1.2