execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~-7 {Tags:["checkern", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~7 ~ ~ {Tags:["checkere", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~7 {Tags:["checkers", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~-7 ~ ~ {Tags:["checkerw", "checker"]}

#check if valid neighbor
execute at @e[type=armor_stand,tag=checkerw] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set west directions 1
execute at @e[type=armor_stand,tag=checkere] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set east directions 1
execute at @e[type=armor_stand,tag=checkers] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set south directions 1
execute at @e[type=armor_stand,tag=checkern] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set north directions 1

#mark which directions are possible
execute if score north directions matches 1 if score east directions matches 1 if score south directions matches 1 if score west directions matches 0 run scoreboard players set NES directions 1
execute if score north directions matches 1 if score east directions matches 1 if score south directions matches 0 if score west directions matches 1 run scoreboard players set NEW directions 1
execute if score north directions matches 1 if score east directions matches 0 if score south directions matches 1 if score west directions matches 1 run scoreboard players set NSW directions 1
execute if score north directions matches 0 if score east directions matches 1 if score south directions matches 1 if score west directions matches 1 run scoreboard players set ESW directions 1
execute if score north directions matches 1 if score east directions matches 1 if score south directions matches 0 if score west directions matches 0 run scoreboard players set NE directions 1
execute if score north directions matches 1 if score east directions matches 0 if score south directions matches 1 if score west directions matches 0 run scoreboard players set NS directions 1
execute if score north directions matches 1 if score east directions matches 0 if score south directions matches 0 if score west directions matches 1 run scoreboard players set NW directions 1
execute if score north directions matches 0 if score east directions matches 1 if score south directions matches 1 if score west directions matches 0 run scoreboard players set ES directions 1
execute if score north directions matches 0 if score east directions matches 1 if score south directions matches 0 if score west directions matches 1 run scoreboard players set EW directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 1 if score west directions matches 1 run scoreboard players set SW directions 1
execute if score north directions matches 1 if score east directions matches 0 if score south directions matches 0 if score west directions matches 0 run scoreboard players set N directions 1
execute if score north directions matches 0 if score east directions matches 1 if score south directions matches 0 if score west directions matches 0 run scoreboard players set E directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 1 if score west directions matches 0 run scoreboard players set S directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 0 if score west directions matches 1 run scoreboard players set W directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 0 if score west directions matches 0 run scoreboard players set none directions 1