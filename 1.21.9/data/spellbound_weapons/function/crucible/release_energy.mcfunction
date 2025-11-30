tag @s add spellbound_player_immunetocrucible





# break
execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1

execute as @s[predicate=spellbound_weapons:holding/weapon/crucible,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"redstone_block"} ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/crucible,predicate=spellbound_weapons:holding/tag/0_durability] run playsound item.shield.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/crucible,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air






execute rotated as @s run summon minecraft:marker ~.5 ~ ~.5 {Tags:["spellbound_crucible_releasedenergy","spellbound_marker"],CustomName:'{"translate":"Crucible Energy"}'}
execute store result score @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute store result score @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute store result score @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute store result score @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4

playsound minecraft:item.trident.thunder player @a[distance=..48] ~ ~ ~ 3 .85
playsound minecraft:block.beacon.power_select player @a[distance=..48] ~ ~ ~ 3 .85
playsound minecraft:block.beacon.power_select player @a[distance=..48] ~ ~ ~ 3 1.25
playsound minecraft:ambient.cave player @a[distance=..48] ~ ~ ~ 3 2

playsound minecraft:entity.allay.ambient_without_item player @a[distance=..48] ~ ~ ~ 3 .55
playsound minecraft:entity.allay.ambient_without_item player @a[distance=..48] ~ ~ ~ 3 .55


scoreboard players set @s spellbound_crucible_stunned 42

execute if score @s spellbound_crucible_dye matches 1 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 1
execute if score @s spellbound_crucible_dye matches 2 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 2
execute if score @s spellbound_crucible_dye matches 3 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 3
execute if score @s spellbound_crucible_dye matches 4 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 4
execute if score @s spellbound_crucible_dye matches 5 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 5
execute if score @s spellbound_crucible_dye matches 6 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 6
execute if score @s spellbound_crucible_dye matches 7 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 7
execute if score @s spellbound_crucible_dye matches 8 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 8
execute if score @s spellbound_crucible_dye matches 9 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 9
execute if score @s spellbound_crucible_dye matches 10 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 10
execute if score @s spellbound_crucible_dye matches 11 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 11
execute if score @s spellbound_crucible_dye matches 12 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 12
execute if score @s spellbound_crucible_dye matches 13 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 13
execute if score @s spellbound_crucible_dye matches 14 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 14
execute if score @s spellbound_crucible_dye matches 15 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 15
execute if score @s spellbound_crucible_dye matches 16 positioned ^-.25 ^ ^.5 run scoreboard players set @n[type=marker,tag=spellbound_crucible_releasedenergy] spellbound_crucible_dye 16


particle end_rod ~ ~1 ~ .3 .3 .3 .5 150 force @a[distance=..128]
particle flash{color:[1,1,1,1]} ~ ~1 ~ 0 0 0 0 10 force @a[distance=..128]
scoreboard players set @s spellbound_crucible_energy 1
