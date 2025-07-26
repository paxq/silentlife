say Reloaded!

title @a times 0t 1.2s 5t

# Create scores
scoreboard objectives add deathCount deathCount deathCount
scoreboard objectives add lifeDisplay dummy
scoreboard objectives add killCount dummy
scoreboard objectives add lone_survivor_check dummy
scoreboard objectives add assassin_tracking_score dummy
scoreboard objectives add right_click_detection minecraft.used:warped_fungus_on_a_stick right_click_detection
scoreboard objectives add ritual_progress dummy

scoreboard objectives add general_variables dummy


scoreboard objectives setdisplay list lifeDisplay

# Initialize Team colors
team add hearts_4+ "4+ Lives left"
team modify hearts_4+ color dark_green
team modify hearts_4+ deathMessageVisibility never
team add hearts_3 "3 Lives left"
team modify hearts_3 color green
team modify hearts_3 deathMessageVisibility never
team add hearts_2 "2 Lives left"
team modify hearts_2 color yellow
team modify hearts_2 deathMessageVisibility never
team add hearts_1 "1 Life left"
team modify hearts_1 color red
team modify hearts_1 deathMessageVisibility never

# Init Session
scoreboard objectives add session_timer dummy "Session Time"
scoreboard objectives setdisplay sidebar session_timer
scoreboard objectives modify session_timer numberformat

kill @e[type=text_display, tag=session_timer]
summon text_display 0 0 0 {CustomName:"Session Timer", CustomNameVisible:false, Tags:["session_timer", "administrator"]}

scoreboard players set @e[type=text_display, tag=session_timer, limit=1] session_timer 3600

scoreboard players display name @e[type=text_display, tag=session_timer, limit=1] session_timer " -• 1:00:00 •-"
scoreboard players display numberformat @e[type=text_display, tag=session_timer, limit=1] session_timer blank
schedule clear silentlife:schedules/session/decrease_time

# Init general Variables
execute unless entity @e[type=text_display, tag=ritual_difficulty] run summon text_display 0 0 0 {CustomName:"Ritual Difficulty", CustomNameVisible:false, Tags:["ritual_difficulty"]}
scoreboard players display name @e[type=text_display, tag=ritual_difficulty, limit=1] general_variables "Ritual Difficulty"
scoreboard players set @e[type=text_display, tag=ritual_difficulty, limit=1, scores={general_variables=..0}] general_variables 2

execute unless entity @e[type=text_display, tag=ritual_difficulty_progress] run summon text_display 0 0 0 {CustomName:"Ritual Difficulty Progress", CustomNameVisible:false, Tags:["ritual_difficulty_progress"]}
scoreboard players display name @e[type=text_display, tag=ritual_difficulty_progress, limit=1] general_variables "Ritual Difficulty Progress"
scoreboard players set @e[type=text_display, tag=ritual_difficulty_progress, limit=1, scores={general_variables=..0}] general_variables 0


# Add moderators
tag _paxq add administrator
tag _GuildedNovella_ add administrator


# Kill assassin's probes
kill @e[tag=assassin_probe]

# Other
kill @e[type=block_display]
kill @e[type=item_frame, tag=ritual_handler]
bossbar remove minecraft:ritual

# Vault
execute if block -78 -17 28 dropper{CustomName:{"italic":false,"text":"Vault"}, Items:[]} run data modify block -78 -17 28 Items append value {Slot:4b, id:"warped_fungus_on_a_stick", count:1, components:{"item_model":"silentlife:empty_summoning_stone", "item_name":{"text":"Summoning Stone", "color":"aqua"}, "lore":["An ancient stone once used for rituals.", {"color":"gray","italic":false,"text":"Place on a diamond pedestal to activate."}]}}
execute unless block -78 -17 28 dropper{CustomName:{"italic":false,"text":"Vault"}} run setblock -78 -17 28 dropper[facing=down]{lock:{items:"trial_key",count:1,components:{"minecraft:item_model":"silentlife:simple_key"}},Items:[{Slot:4b,id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:item_model":"silentlife:warp_stone","minecraft:item_name":{"color":"blue","text":"Warp Stone"},"minecraft:lore":["An ancient stone that radiates with a strange energy.",{"color":"gray","italic":false,"text":"Right Click to Activate"}]}},{Slot:1b,id:"minecraft:compass",count:1,components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;424,36,461]},tracked:false}}},{Slot:7b,id:"minecraft:trial_key",count:1,components:{"minecraft:item_model":"silentlife:simple_key","minecraft:item_name":"Simple Key","minecraft:lore":[{"color":"gray","text":"Unlocks a simple lock"}]}}],CustomName:{"italic":false,"text":"Vault"}} replace
summon block_display -78.05 -17 27.95 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},block_state:{Name:"minecraft:glass"}}

# Update Player lives
# data modify storage silentlife:data lives set value []
# summon item_display ~ ~ ~ {Tags:["life_update"]}
# execute as @a run loot replace entity @e[tag=life_update, limit=1] container.0 loot silentlife:life_update
# data modify storage silentlife:data lives append from entity @e[tag=life_update, limit=1] item.components."minecraft:profile".name

# give recipe
recipe give @a silentlife:summoning_stone
recipe give @a silentlife:summoning_stone_core