#wrapper function for more randomized maze construction
#23 definitely works, 24 is a hard limit

#do calculations on if the maze is even or odd to guide construction
scoreboard players operation evenodd2 maze = constant maze
scoreboard players operation evenodd2 maze %= two maze

#create starting point for grid construction
function testing:cursor

#build empty grid
function testing:xgridbuilder

#remove starting point
kill @e[type=armor_stand,tag=cursor]

#create maze opening
function testing:opening

#build maze
function testing:constructorrand