playsound entity.enderman.teleport master @a[distance=..20]

summon zombie ~1 ~ ~1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"iron_chestplate",count:1},feet:{id:"golden_boots",count:1},mainhand:{id:"diamond_axe",count:1}}}
summon zombie ~1 ~ ~-1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},chest:{id:"golden_chestplate",count:1}}}
summon zombie ~-1 ~ ~1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"iron_chestplate",count:1},mainhand:{id:"iron_sword",count:1}}}
summon spider ~-1 ~ ~-1 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"]}]}

summon spider ~1.5 ~ ~1.5 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"iron_chestplate",count:1},feet:{id:"iron_boots",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}
summon spider ~1.5 ~ ~-1.5 {Tags:["ritual_enemy"]}
summon skeleton ~-1.5 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},chest:{id:"chainmail_chestplate",count:1},mainhand:{id:"minecraft:bow",count:1}}}
summon zombie ~-1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},chest:{id:"iron_chestplate",count:1},mainhand:{id:"iron_sword",count:1}}}

summon witch ~2 ~ ~2 {Tags:["ritual_enemy"]}
summon skeleton ~2 ~ ~-2 {Tags:["ritual_enemy"],equipment:{mainhand:{id:"minecraft:iron_shovel",count:1},head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"bow",count:1,components:{enchantments:{flame:1}}}}}
summon spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}
summon spider ~-2 ~ ~-2 {Tags:["ritual_enemy"],Passengers:[{id:"minecraft:skeleton",Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"leather_chestplate",count:1},legs:{id:"leather_leggings",count:1},mainhand:{id:"minecraft:bow",count:1}}}]}

summon zombie ~-2 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},feet:{id:"golden_boots",count:1},mainhand:{id:"iron_sword",count:1}}}
summon cave_spider ~-2 ~ ~2 {Tags:["ritual_enemy"]}