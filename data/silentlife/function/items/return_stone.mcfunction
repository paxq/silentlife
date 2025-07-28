scoreboard players set @s right_click_detection 0

effect give @s blindness 5 20
effect give @s slowness 5 5
effect give @s hunger 1 1

scoreboard players set @s lifeDisplay 3

gamemode survival @s
execute in minecraft:overworld run tp @s @e[tag=black_hole_ov, type=item_display, sort=nearest, limit=1]
