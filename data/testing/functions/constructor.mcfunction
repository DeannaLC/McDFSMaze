#reset previous scores
scoreboard players set north directions 0
scoreboard players set south directions 0
scoreboard players set east directions 0
scoreboard players set west directions 0
scoreboard players set NESW directions 0
scoreboard players set NES directions 0
scoreboard players set NEW directions 0
scoreboard players set NSW directions 0
scoreboard players set ESW directions 0
scoreboard players set NE directions 0
scoreboard players set NS directions 0
scoreboard players set NW directions 0
scoreboard players set ES directions 0
scoreboard players set EW directions 0
scoreboard players set SW directions 0
scoreboard players set N directions 0
scoreboard players set E directions 0
scoreboard players set S directions 0
scoreboard players set W directions 0
scoreboard players set none directions 0

#mark current node as visited
execute at @e[type=armor_stand,tag=dfscursor] run tag @e[type=armor_stand,distance=..1,limit=1,tag=validneighbor] add visited
execute at @e[type=armor_stand,tag=dfscursor] run tag @e[type=armor_stand,distance=..1,limit=1,tag=validneighbor] remove validneighbor

#cardinals relative to armor stand position
#execute store result score rand2 directions run random value 0..1

#odd openings, 0 for north, 1 for east
#execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 0 if score evenodd2 maze matches 1 unless score constructing maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-4 air
#execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 1 if score evenodd2 maze matches 1 unless score constructing maze matches 1 run fill ~4 ~ ~-1 ~ ~10 ~1 air

#even openings, 0 for north, 1 for west
#execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 0 if score evenodd2 maze matches 0 unless score constructing maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-4 air
#execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 1 if score evenodd2 maze matches 0 unless score constructing maze matches 1 run fill ~-4 ~ ~-1 ~ ~10 ~1 air

#make sure start doesn't create a new opening later
#scoreboard players set constructing maze 1

#create diff random for end
#execute store result score rand2 directions run random value 0..1

#odd endings, 0 for south, 1 for west
#execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 0 if score evenodd2 maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~4 air
#execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 1 if score evenodd2 maze matches 1 run fill ~ ~ ~-1 ~-4 ~10 ~1 air

#even endings, 0 for south, 1 for east
#execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 0 if score evenodd2 maze matches 0 run fill ~1 ~ ~ ~-1 ~10 ~4 air
#execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 1 if score evenodd2 maze matches 0 run fill ~4 ~ ~1 ~ ~10 ~-1 air

#don't need to reference end anymore, algorithm should automatically reach it
#kill @e[type=armor_stand,tag=end]

#spawn a checker armor stand at each cardinal direction
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~-7 {Tags:["checkern", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~7 ~ ~ {Tags:["checkere", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~ ~ ~7 {Tags:["checkers", "checker"]}
execute at @e[type=armor_stand,tag=dfscursor] run summon armor_stand ~-7 ~ ~ {Tags:["checkerw", "checker"]}

#check which directions are valid neighbors
execute at @e[type=armor_stand,tag=checkerw] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set west directions 1
execute at @e[type=armor_stand,tag=checkere] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set east directions 1
execute at @e[type=armor_stand,tag=checkers] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set south directions 1
execute at @e[type=armor_stand,tag=checkern] if entity @e[type=armor_stand,tag=validneighbor,distance=..1] run scoreboard players set north directions 1

#mark which directions are possible to travel
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

#remove checkers after they're done
kill @e[type=armor_stand,tag=checker]

#if there's an available direction pick one to move to
execute unless score none directions matches 1 run function testing:mazegen

#go backwards if there's no possible directions
execute if score none directions matches 1 run function testing:backtrack