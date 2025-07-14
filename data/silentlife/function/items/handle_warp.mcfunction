scoreboard players set @s right_click_detection 0

tag @e[distance=0..10, limit=5, sort=nearest] add warping
effect give @e[tag=warping] darkness 3 5 true
effect give @e[tag=warping] blindness 5 2 true
effect give @e[tag=warping] slowness 10 1 true
playsound entity.enderman.teleport master @a[tag=warping]
playsound entity.dragon_fireball.explode master @a[tag=warping]

tp @e[tag=warping, type=!item_frame, type=!block_display, type=!text_display] 188 76 -465 ~ ~

item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[item_name={"color":"white","text":"Broken Warp Stone"},item_model="silentlife:broken_warp_stone",lore=["A broken ancient stone that no longer ", "radiates with a strange energy."]]