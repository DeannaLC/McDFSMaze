#generate random values
#direction depends on list of directions given
execute store result score rand3 directions run random value 0..2
execute store result score rand2 directions run random value 0..1

#break walls and move dfscursor, mark which direction was last traveled
#will always succeed, but takes a lot of lines to account for every direction correctly
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 1 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 2 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 2 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score NES directions matches 1 if score rand3 directions matches 2 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south

execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 1 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 2 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 2 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NEW directions matches 1 if score rand3 directions matches 2 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south
execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 2 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 2 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NSW directions matches 1 if score rand3 directions matches 2 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 0 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south
execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 2 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 2 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score ESW directions matches 1 if score rand3 directions matches 2 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 1 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NE directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east

execute at @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score NS directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south

execute at @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 1 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score NW directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 0 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score ES directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south

execute at @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 0 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 1 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score EW directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 0 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 0 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 0 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south
execute at @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 1 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score SW directions matches 1 if score rand2 directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

execute at @e[type=armor_stand,tag=dfscursor] if score N directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score N directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~-7
execute at @e[type=armor_stand,tag=dfscursor] if score N directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add north
execute at @e[type=armor_stand,tag=dfscursor] if score E directions matches 1 run fill ~5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score E directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score E directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add east
execute at @e[type=armor_stand,tag=dfscursor] if score S directions matches 1 run fill ~1 ~ ~ ~-1 ~10 ~5 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score S directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~ ~ ~7
execute at @e[type=armor_stand,tag=dfscursor] if score S directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add south
execute at @e[type=armor_stand,tag=dfscursor] if score W directions matches 1 run fill ~-5 ~ ~1 ~ ~10 ~-1 air
execute at @e[type=armor_stand,tag=dfscursor] as @e[type=armor_stand,tag=dfscursor] if score W directions matches 1 run tp @e[type=armor_stand,tag=dfscursor] ~-7 ~ ~
execute at @e[type=armor_stand,tag=dfscursor] if score W directions matches 1 run tag @e[type=armor_stand,distance=..1,tag=validneighbor,limit=1] add west

#go back and check which directions possible in new spot
function testing:constructor