#reset scores
scoreboard players set north directions 0
scoreboard players set south directions 0
scoreboard players set east directions 0
scoreboard players set west directions 0
scoreboard players set none directions 0

#mark current node as visited
execute at @e[type=armor_stand,tag=dfscursor] run tag @e[type=armor_stand,distance=..1,limit=1,tag=validneighbor] add visited
execute at @e[type=armor_stand,tag=dfscursor] run tag @e[type=armor_stand,distance=..1,limit=1,tag=validneighbor] remove validneighbor

#spawn a checker armor stand at each cardinal direction
#n is -z, e is x, s is z, w is -x
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~-7 {Tags:["checkern", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~7 ~ ~ {Tags:["checkere", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~7 {Tags:["checkers", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~-7 ~ ~ {Tags:["checkerw", "checker"]}

#check if valid neighbor
execute at @e[type=armor_stand,tag=checkerw] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set west directions 1
execute at @e[type=armor_stand,tag=checkere] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set east directions 1
execute at @e[type=armor_stand,tag=checkers] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set south directions 1
execute at @e[type=armor_stand,tag=checkern] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set north directions 1

execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 0 if score west directions matches 0 run scoreboard players set none directions 1

#remove checkers after they're done
kill @e[type=armor_stand,tag=checker]

#could be slow could be fast
#lowest - 3429 on 5 grid
#can reach 24
execute unless score none directions matches 1 run function testing:mazegenrand

execute if score none directions matches 1 run function testing:backtrackrand