#more random version of mazegen function
#something something infinite big-Oh but better avg runtime
#needs to succeed in 2 tries to be more optimal, 75% success rate on 2 directions, 93.75% on 3 directions

#reset vals that might've been run before
scoreboard players set goN directions 0
scoreboard players set goE directions 0
scoreboard players set goS directions 0
scoreboard players set goW directions 0

scoreboard players set noDir directions 0

#0 north, 1 east, 2 south, 3 west
execute store result score rand4 directions run random value 0..3

#choose which direction to go
execute if score rand4 directions matches 0 if score north directions matches 1 run scoreboard players set goN directions 1
execute if score rand4 directions matches 1 if score east directions matches 1 run scoreboard players set goE directions 1
execute if score rand4 directions matches 2 if score south directions matches 1 run scoreboard players set goS directions 1
execute if score rand4 directions matches 3 if score west directions matches 1 run scoreboard players set goW directions 1

#if only one direction possible, don't bother with random chance
execute if score north directions matches 1 if score east directions matches 0 if score south directions matches 0 if score west directions matches 0 run scoreboard players set goN directions 1
execute if score north directions matches 0 if score east directions matches 1 if score south directions matches 0 if score west directions matches 0 run scoreboard players set goE directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 1 if score west directions matches 0 run scoreboard players set goS directions 1
execute if score north directions matches 0 if score east directions matches 0 if score south directions matches 0 if score west directions matches 1 run scoreboard players set goW directions 1

#break wall, tp dfscursor, mark last traveled direction
execute at @e[type=armor_stand,tag=dfscursor] if score goN directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score goN directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score goN directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north

execute at @e[type=armor_stand,tag=dfscursor] if score goE directions matches 1 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score goE directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score goE directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east

execute at @e[type=armor_stand,tag=dfscursor] if score goS directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score goS directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score goS directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south

execute at @e[type=armor_stand,tag=dfscursor] if score goW directions matches 1 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score goW directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score goW directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

#if a random value didn't correlate with a random direction, reroll
execute if score goN directions matches 0 if score goE directions matches 0 if score goS directions matches 0 if score goW directions matches 0 run scoreboard players set noDir directions 1
execute if score noDir directions matches 1 run function testing:mazegenrand

#if successful, check new location
execute if score noDir directions matches 0 run function testing:constructorrand