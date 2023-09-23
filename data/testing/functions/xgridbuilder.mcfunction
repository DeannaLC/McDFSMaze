#check if even or odd yaxis
scoreboard players operation evenodd maze = yAxis maze
scoreboard players operation evenodd maze %= two maze

#create one cell and validneighbor stand
execute if score xAxis maze > zero maze run function testing:emptystruct
execute if score xAxis maze > zero maze at @e[type=armor_stand,tag=cursor] run summon armor_stand ~ ~ ~ {Tags:["validneighbor"]}

#make dfs cursor and start marker for first cell
execute at @e[type=armor_stand,tag=cursor] if score xAxis maze = constant maze if score yAxis maze = constant maze run summon armor_stand ~ ~ ~ {Tags:["start"]}
execute at @e[type=armor_stand,tag=cursor] if score xAxis maze = constant maze if score yAxis maze = constant maze run summon armor_stand ~ ~ ~ {Tags:["dfscursor"]}

#if end cell created make end cursor
execute if score evenodd2 maze matches 1 if score xAxis maze = one maze if score yAxis maze = one maze at @e[type=armor_stand,tag=cursor] run summon armor_stand ~ ~ ~ {Tags:["end"]}
execute if score evenodd2 maze matches 0 if score xAxis maze = constant maze if score yAxis maze = one maze at @e[type=armor_stand,tag=cursor] run summon armor_stand ~ ~ ~ {Tags:["end"]}

#one less to go in x direction
execute if score xAxis maze > zero maze run scoreboard players operation xAxis maze -= one maze

#move cursor based on even or odd
execute at @e[type=armor_stand,tag=cursor] as @e[type=armor_stand,tag=cursor] if score xAxis maze > zero maze if score evenodd maze matches 0 run tp @e[type=armor_stand,tag=cursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=cursor] as @e[type=armor_stand,tag=cursor] if score xAxis maze > zero maze unless score evenodd maze matches 0 run tp @e[type=armor_stand,tag=cursor] ~-7 ~ ~

#while loop
function testing:ygridbuilder