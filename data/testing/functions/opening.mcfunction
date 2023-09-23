#cardinals relative to armor stand position
execute store result score rand2 directions run random value 0..1

#odd openings, 0 for north, 1 for east
execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 0 if score evenodd2 maze matches 1 unless score constructing maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-4 air
execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 1 if score evenodd2 maze matches 1 unless score constructing maze matches 1 run fill ~4 ~ ~-1 ~ ~10 ~1 air

#even openings, 0 for north, 1 for west
execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 0 if score evenodd2 maze matches 0 unless score constructing maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~-4 air
execute at @e[type=armor_stand,tag=start] if score rand2 directions matches 1 if score evenodd2 maze matches 0 unless score constructing maze matches 1 run fill ~-4 ~ ~-1 ~ ~10 ~1 air

#create diff random for end
execute store result score rand2 directions run random value 0..1

#odd endings, 0 for south, 1 for west
execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 0 if score evenodd2 maze matches 1 run fill ~1 ~ ~ ~-1 ~10 ~4 air
execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 1 if score evenodd2 maze matches 1 run fill ~ ~ ~-1 ~-4 ~10 ~1 air

#even endings, 0 for south, 1 for east
execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 0 if score evenodd2 maze matches 0 run fill ~1 ~ ~ ~-1 ~10 ~4 air
execute at @e[type=armor_stand,tag=end] if score rand2 directions matches 1 if score evenodd2 maze matches 0 run fill ~4 ~ ~1 ~ ~10 ~-1 air

#don't need to reference end anymore, algorithm should automatically reach it
kill @e[type=armor_stand,tag=end]