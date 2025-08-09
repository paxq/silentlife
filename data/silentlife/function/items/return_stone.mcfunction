scoreboard players set @s right_click_detection 0
clear @s minecraft:warped_fungus_on_a_stick[minecraft:item_model="silentlife:return_stone"]

effect give @s blindness 5 20
effect give @s slowness 5 5
effect give @s hunger 1 1

playsound block.end_portal.spawn master @a

scoreboard players set @s lifeDisplay 1

gamemode survival @s
execute in minecraft:overworld run tp @s @e[tag=black_hole_ov, type=item_display, sort=nearest, limit=1]

advancement grant @s only silentlife:leave_after