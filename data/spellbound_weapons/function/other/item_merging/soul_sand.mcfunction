
scoreboard players add @s spellbound_count 1




execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle soul ~ ~.2 ~ 0 0 0 .03 1 force @a[distance=..128]


execute if score @s spellbound_count matches 1.. run playsound minecraft:ui.stonecutter.take_result block @a[distance=..24] ~ ~ ~ 1 2


execute if score @s spellbound_count matches 7.. run particle soul_fire_flame ~ ~.2 ~ 0 0 0 .1 8 force @a[distance=..128]

execute if score @s spellbound_count matches 6 run playsound block.bell.resonate block @a[distance=..32] ~ ~ ~ 1 1.2



execute if score @s spellbound_count matches 1..4 run particle enchant ~ ~1.8 ~ 0 0 0 12 110 normal
execute if score @s spellbound_count matches 14.. run function spellbound_weapons:other/item_merging/merged_witherblade


