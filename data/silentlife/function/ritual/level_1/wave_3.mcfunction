bossbar set minecraft:ritual max 12
playsound entity.ender_dragon.growl master @a[distance=..15] ~ ~ ~ 0.2

summon zombie ~1 ~ ~1 {Tags:["ritual_enemy"]}
summon zombie ~1 ~ ~-1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},mainhand:{id:"minecraft:iron_sword",count:1}}}
summon zombie ~-1 ~ ~1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"minecraft:leather_chestplate",count:1}}}
summon spider ~-1 ~ ~-1 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"]}]}

summon spider ~1.5 ~ ~1.5 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}
summon cave_spider ~1.5 ~ ~-1.5 {Tags:["ritual_enemy"]}
summon skeleton ~-1.5 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"minecraft:bow",count:1}}}
summon zombie ~-1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1}}}

summon zombie ~2 ~ ~2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},chest:{id:"minecraft:golden_chestplate",count:1},mainhand:{id:"minecraft:iron_axe",count:1}}}
summon skeleton ~2 ~ ~-2 {Tags:["ritual_enemy"],equipment:{mainhand:{id:"minecraft:iron_shovel",count:1},head:{id:"minecraft:chainmail_helmet",count:1}}}
summon spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}
summon cave_spider ~-2 ~ ~-2 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"minecraft:golden_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}

summon zombie ~-2 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},mainhand:{id:"minecraft:iron_sword",count:1}}}
summon cave_spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}