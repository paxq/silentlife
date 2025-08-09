# Init scoreboards
scoreboard objectives add vessel_health health
scoreboard objectives add vessel_phase dummy
scoreboard objectives add vessel_per_phase_health dummy
scoreboard objectives add vessel_attack_timer dummy
scoreboard objectives add vessel_attack_animation_timer dummy

scoreboard objectives add build_sequence dummy

scoreboard objectives add random dummy

scoreboard objectives add manual_right_click minecraft.used:minecraft.carrot_on_a_stick

# Init bossbar
bossbar remove minecraft:life_vessel
bossbar add minecraft:life_vessel vessel_health
bossbar set minecraft:life_vessel visible false
bossbar set minecraft:life_vessel name "Life Vessel"
bossbar set minecraft:life_vessel style progress
bossbar set minecraft:life_vessel color green
bossbar set minecraft:life_vessel max 2500

# Kill vessel controller
kill @e[tag=life_vessel_controller, type=block_display]
kill @e[tag=life_vessel]