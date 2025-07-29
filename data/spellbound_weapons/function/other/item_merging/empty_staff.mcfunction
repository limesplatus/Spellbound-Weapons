scoreboard players add @s spellbound_count 1




execute if score @s spellbound_count matches 1.. run particle poof ~ ~.3 ~ 0 0 0 .05 1 force @a[distance=..64]
execute if score @s spellbound_count matches 1.. run particle block{block_state:"netherite_block"} ~ ~.2 ~ 0 0 0 0 1 force @a[distance=..32] 

execute if score @s spellbound_count matches 1 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 2 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 3 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 4 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 5 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 6 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s spellbound_count matches 7 run playsound block.netherrack.place block @a[distance=..16] ~ ~ ~ 1 1

execute if score @s spellbound_count matches 1 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 2 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 3 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 4 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 5 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 6 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 7 run playsound minecraft:ui.stonecutter.take_result block @a[distance=..16] ~ ~ ~ 1 2



execute if score @s spellbound_count matches 7 if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:fire_charge"}}] run function spellbound_weapons:other/item_merging/merged_fire_staff

execute if score @s spellbound_count matches 7 if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:packed_ice"}}] run function spellbound_weapons:other/item_merging/merged_ice_staff
execute if score @s spellbound_count matches 7 if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ice"}}] run function spellbound_weapons:other/item_merging/merged_ice_staff
execute if score @s spellbound_count matches 7 if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:blue_ice"}}] run function spellbound_weapons:other/item_merging/merged_ice_staff



execute if score @s spellbound_count matches 7 if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone"}}] run function spellbound_weapons:other/item_merging/merged_electric_staff
