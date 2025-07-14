import math

time = 5400 # 1 1/2 hours
output = "display_time.mcfunction"

with open(output, "w") as text_file:
    text_file.write("")

for x in range(5401):
    hr = math.floor(x / 3600) % 60
    mn = math.floor(x / 60) % 60
    sc = x % 60
    if hr < 10:
        hr = f"0{hr}"
    if mn < 10:
        mn = f"0{mn}"
    if sc < 10:
        sc = f"0{sc}"
    with open(output, "a") as text_file:
        text_file.write("scoreboard players display name @e[type=text_display, tag=session_timer, limit=1, scores={session_timer=" + f"{x}" + "}] session_timer " + f'"-• {hr}:{mn}:{sc} •-"\n')
    # print("scoreboard players display name @e[type=text_display, tag=session_timer, limit=1, scores={session_timer=" + f"{x}" + "}] session_timer " + f"-• {hr}:{mn}:{sc} •-")