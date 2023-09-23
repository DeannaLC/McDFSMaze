#if more x to go, keep going
execute if score xAxis maze > zero maze run function testing:xgridbuilder

#if x is 0, reset it
execute if score xAxis maze matches 0 run scoreboard players operation xAxis maze = constant maze

#subtract 1 from yvals
execute if score xAxis maze = constant maze if score yAxis maze > zero maze run scoreboard players operation yAxis maze -= one maze

#move cursor in y axis
execute at @e[type=armor_stand,tag=cursor] as @e[type=armor_stand,tag=cursor] if score yAxis maze > zero maze run tp @e[type=armor_stand,tag=cursor] ~ ~ ~7

#build grid
execute if score yAxis maze > zero maze run function testing:xgridbuilder