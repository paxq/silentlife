# Show bossbar
bossbar set minecraft:life_vessel players @a
bossbar set minecraft:life_vessel visible true
# Summon phase 1; and add scores
scoreboard players set @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_health 3500
scoreboard players set @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_phase 0
scoreboard players set @e[type=block_display,tag=life_vessel_controller,limit=1] vessel_attack_timer 0
execute as @e[type=block_display,tag=life_vessel_controller,limit=1] run function life_vessel:phases/load_next