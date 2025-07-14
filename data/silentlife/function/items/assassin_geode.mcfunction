scoreboard players set @s right_click_detection 0

execute as @s[tag=assassin] run function silentlife:assassin/display_assassin_info
execute as @s[tag=!assassin] run title @s actionbar "You are not allowed to use this item."