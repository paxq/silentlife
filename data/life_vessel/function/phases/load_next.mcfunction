# teleport out of range
execute as @e[tag=life_vessel, limit=1, sort=nearest] run tp @s ~ -10000 ~
# increase phase
scoreboard players add @s vessel_phase 1
# summon next phase
execute as @s[scores={vessel_phase=1}] run function life_vessel:phases/summon_phase_1
# summon next phase
execute as @s[scores={vessel_phase=2}] run function life_vessel:phases/summon_phase_2