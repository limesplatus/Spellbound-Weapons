
#damage
execute if score @s[tag=!spellbound_player_immunetocrucible] spellbound_crucible_stunned matches 1 as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid4 run tag @s add spellbound_temp5
execute if score @s[type=!#spellbound_weapons:misc] spellbound_crucible_stunned matches 1 run damage @s 14 spellbound_weapons:melee_force by @p[tag=spellbound_temp5]
tag @a remove spellbound_temp5

execute if score @s spellbound_crucible_stunned matches 1..50 run data merge entity @s[tag=!spellbound_player_immunetocrucible] {NoAI:1b}
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 1 5 force @a[distance=..128]
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run particle end_rod ~ ~.5 ~ .3 1 .3 .15 20 force @a[distance=..64]
execute if score @s spellbound_crucible_stunned matches 1 as @s[tag=!spellbound_player_immunetocrucible] run playsound minecraft:entity.iron_golem.damage player @a[distance=..30] ~ ~ ~ 2 .7





execute if score @s spellbound_crucible_stunned matches 1..50 run particle electric_spark ~ ~1 ~ .4 .5 .4 .1 6 force @a[distance=..64]

execute if score @s spellbound_crucible_stunned matches 1..50 run tp @s[tag=!spellbound_player_immunetocrucible] @s

scoreboard players add @s spellbound_crucible_stunned 1
execute if score @s spellbound_crucible_stunned matches 50.. run data merge entity @s {NoAI:0b}
execute if score @s spellbound_crucible_stunned matches 50.. run tag @s remove spellbound_player_immunetocrucible
execute if score @s spellbound_crucible_stunned matches 60.. run scoreboard players reset @s spellbound_crucible_stunned
