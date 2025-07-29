
scoreboard players add @s spellbound_count 1



execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle block{block_state:"netherite_block"} ~ ~.2 ~ 0 0 0 0 1 force @a[distance=..32] 

execute if score @s spellbound_count matches 1 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 2 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 3 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 4 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 5 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 6 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 7 run playsound block.netherite_block.break block @a[distance=..16] ~ ~ ~ 1 1

execute if score @s spellbound_count matches 1 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 2 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 3 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 4 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 5 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 6 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 7 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2






execute if score @s spellbound_count matches 7.. run function spellbound_weapons:other/item_merging/merged_magmus_charger


