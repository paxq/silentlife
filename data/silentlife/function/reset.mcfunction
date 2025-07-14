advancement revoke @a from silentlife:root
team remove hearts_1
team remove hearts_2
team remove hearts_3
team remove hearts_4+

scoreboard objectives remove session_timer
scoreboard objectives remove deathCount
scoreboard objectives remove lifeDisplay
scoreboard objectives remove killCount
scoreboard objectives remove assassin_tracking_score
scoreboard objectives remove right_click_detection

scoreboard objectives setdisplay sidebar
kill @e[type=text_display, tag=session_timer]

tag _paxq remove administrator

tag @a remove assassin
tag @a remove assassin_1
tag @a remove assassin_2
tag @a remove assassin_target