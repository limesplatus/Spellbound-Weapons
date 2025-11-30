

scoreboard players add @s spellbound_count 1



execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle block{block_state:"netherite_block"} ~ ~.2 ~ 0 0 0 0 1 force @a[distance=..32] 

execute if score @s spellbound_count matches 8 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.1 1.75
execute if score @s spellbound_count matches 9 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.2 1.75
execute if score @s spellbound_count matches 10 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.3 1.75
execute if score @s spellbound_count matches 11 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.5 1.75
execute if score @s spellbound_count matches 12 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.7 1.75
execute if score @s spellbound_count matches 13 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 0.9 1.75
execute if score @s spellbound_count matches 14 run playsound item.trident.hit_ground block @a[distance=..16] ~ ~ ~ 1.5 1.75

execute if score @s spellbound_count matches 1.. run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2



execute if score @s spellbound_count matches 10 run playsound minecraft:block.anvil.land block @a[distance=..16] ~ ~ ~ 1 1.6
execute if score @s spellbound_count matches 12 run playsound minecraft:block.anvil.land block @a[distance=..16] ~ ~ ~ 1 1.4
execute if score @s spellbound_count matches 14 run playsound minecraft:block.anvil.land block @a[distance=..16] ~ ~ ~ 1 1.2



execute if score @s spellbound_count matches 4 as @e[distance=..1,type=item] run data merge entity @s {Motion:[0.0,0.02,0.0],NoGravity:1b}


#the light!!!

execute if score @s spellbound_count matches 1 positioned ~ ~128 ~ run function spellbound_weapons:crucible/summon_light_coming_down


execute if score @s spellbound_count matches 12.. run particle end_rod ~ ~.15 ~ 0 0 0 .3 5 force @a[distance=..128]


execute if score @s spellbound_count matches 1..4 run particle enchant ~ ~1.8 ~ 0 0 0 12 110 normal


execute if score @s spellbound_count matches 12.. run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 5 force @a[distance=..256]
execute if score @s spellbound_count matches 14.. run function spellbound_weapons:other/item_merging/merged_crucible





