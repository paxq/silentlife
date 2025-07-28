execute as @e[scores={lifeDisplay=..0}, tag=purgable] run execute in silentlife:after run tp @s @e[tag=black_hole_af, type=item_display, sort=nearest, limit=1]
execute as @e[scores={lifeDisplay=..0}, tag=purgable] run scoreboard players set @s lifeDisplay -1
execute as @e[scores={lifeDisplay=..0}, tag=purgable] run gamemode adventure @s