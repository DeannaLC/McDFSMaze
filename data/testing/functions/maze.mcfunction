#wrapper function for maze construction

#do calculation for whether maze is even or odd to guide construction
scoreboard players operation evenodd2 maze = constant maze
scoreboard players operation evenodd2 maze %= two maze

#make starting point
function testing:cursor

#make empty grid
function testing:xgridbuilder

#remove starting point
kill @e[type=armor_stand,tag=cursor]

#create maze opening and end
function testing:opening

#build maze
function testing:constructor