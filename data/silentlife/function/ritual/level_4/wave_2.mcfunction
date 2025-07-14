playsound entity.enderman.teleport master @a[distance=..20]

summon witch ~1 ~ ~1 {Tags:["ritual_enemy"]}
summon slime ~1 ~ ~-1 {Tags:["ritual_enemy"],Size:3b,equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"iron_chestplate",count:1},mainhand:{id:"minecraft:iron_sword",count:1}}}
summon zombie ~-1 ~ ~1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:leather_chestplate",count:1},mainhand:{id:"iron_axe",count:1}}}
summon spider ~-1 ~ ~-1 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"iron_chestplate",count:1},offhand:{id:"bow",count:1}}}]}

summon spider ~1.5 ~ ~1.5 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}
summon cave_spider ~1.5 ~ ~-1.5 {Tags:["ritual_enemy"]}
summon skeleton ~-1.5 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}}}
summon zombie ~-1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"diamond_shovel",count:1}}}

summon zombie ~2 ~ ~2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},mainhand:{id:"minecraft:diamond_axe",count:1}}}
summon skeleton ~2 ~ ~-2 {Tags:["ritual_enemy"],equipment:{mainhand:{id:"minecraft:iron_shovel",count:1},head:{id:"minecraft:chainmail_helmet",count:1},chest:{id:"iron_chestplate",count:1}}}
summon spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}
summon cave_spider ~-2 ~ ~-2 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},chest:{id:"minecraft:golden_chestplate",count:1},legs:{id:"golden_leggings",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}

summon slime ~-1 ~ ~0.5 {Tags:["ritual_enemy"],Size:5b,equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"iron_chestplate",count:1},feet:{id:"iron_boots",count:1},mainhand:{id:"minecraft:iron_sword",count:1}}}
summon cave_spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}
summon witch ~1 ~ ~-0.5 {Tags:["ritual_enemy"]}