execute as @e[scores={lifeDisplay=..0}, tag=purgable] run execute in silentlife:after run tp -53 145 37
execute as @e[scores={lifeDisplay=..0}, tag=purgable] run scoreboard players set @s lifeDisplay -1
execute as @e[scores={lifeDisplay=..0}, tag=purgable] run gamemode adventure @s