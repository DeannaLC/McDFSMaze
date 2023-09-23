#reset previous scores
scoreboard players set dn directions 0
scoreboard players set de directions 0
scoreboard players set ds directions 0

#node contains last direction travelled, go opposite of it
execute at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=north,distance=..1] run scoreboard players set dn directions 1
execute at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=north,distance=..1] run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute if score dn directions matches 0 at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=east,distance=..1] run scoreboard players set de directions 1
execute if score dn directions matches 0 at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=east,distance=..1] run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute if score dn directions matches 0 if score de directions matches 0 at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=south,distance=..1] run scoreboard players set ds directions 1
execute if score dn directions matches 0 if score de directions matches 0 at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=south,distance=..1] run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute if score dn directions matches 0 if score de directions matches 0 if score ds directions matches 0 at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=west,distance=..1] run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~

#choose new direction to do dfs in if not at start
execute at @e[type=armor_stand,tag=dfscursor] unless entity @e[type=armor_stand,tag=start,distance=..1] run function testing:constructor

#if at start remove all armor stands, and maze is done
execute at @e[type=armor_stand,tag=dfscursor] if entity @e[type=armor_stand,tag=start,distance=..1] run kill @e[type=armor_stand]