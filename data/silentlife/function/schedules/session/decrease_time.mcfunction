scoreboard players remove @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=0..}] session_timer 1

execute as @e[type=text_display, tag=session_timer, tag=running, limit=1, scores={session_timer=..0}] run function silentlife:end_session

function silentlife:schedules/session/display_time
function silentlife:schedules/session/clock