playsound entity.enderman.teleport master @a[distance=..20]

summon zombie ~1 ~ ~1 {Tags:["ritual_enemy"]}
summon zombie ~1 ~ ~-1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},mainhand:{id:"iron_sword",count:1}}}
summon zombie ~-1 ~ ~1 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"golden_chestplate",count:1},mainhand:{id:"golden_sword",count:1}}}
summon zombie ~-1 ~ ~-1 {Tags:["ritual_enemy"],equipment:{mainhand:{id:"minecraft:iron_shovel",count:1},head:{id:"minecraft:golden_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1},legs:{id:"minecraft:iron_leggings",count:1},mainhand:{id:"iron_hoe",count:1}}}

summon zombie ~1.5 ~ ~1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"iron_chestplate",count:1}}}
summon zombie ~1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},mainhand:{id:"iron_sword",count:1}}}
summon zombie ~-1.5 ~ ~1.5 {Tags:["ritual_enemy"]}
summon zombie ~-1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},chest:{id:"leather_chestplate",count:1}}}

summon zombie ~2 ~ ~2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:golden_helmet",count:1},mainhand:{id:"stone_sword",count:1}}}
summon zombie ~2 ~ ~-2 {Tags:["ritual_enemy"],equipment:{mainhand:{id:"minecraft:iron_shovel",count:1},head:{id:"minecraft:chainmail_helmet",count:1}}}
summon zombie ~-2 ~ ~2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:chainmail_helmet",count:1},chest:{id:"golden_chestplate",count:1}}}
summon zombie ~-2 ~ ~-2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1},mainhand:{id:"wooden_axe",count:1}}}

summon zombie ~-1.5 ~ ~-1.5 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:leather_helmet",count:1}}}
summon zombie ~-2 ~ ~2 {Tags:["ritual_enemy"],equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"golden_chestplate",count:1},mainhand:{id:"golden_axe",count:1}}}