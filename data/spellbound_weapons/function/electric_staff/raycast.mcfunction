


execute if block ~ ~ ~ #spellbound_weapons:water run function spellbound_weapons:electric_staff/hit

scoreboard players add temp spellbound_count 1

particle wax_off ^ ^ ^-.5 0 0 0 1 1 force @a[distance=..128]
particle end_rod ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if predicate spellbound_weapons:chance/50_percent run particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute if predicate spellbound_weapons:chance/50_percent run particle end_rod ~ ~ ~ 0 0 0 .075 1 force @a[distance=..128]
#execute unless block ~ ~ ~ air run particle end_rod ~ ~ ~ 0 0 0 .3 30 force

execute unless block ~ ~ ~ #spellbound_weapons:permeable run scoreboard players set temp spellbound_count 48

execute unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:electric_staff/summon_electirc

# hit mob
execute positioned ~ ~ ~ if entity @e[dy=0,distance=..5,type=!#spellbound_weapons:misc,tag=!spellbound_electric_staff_immune,tag=!spellbound_electric_hit,predicate=!spellbound_weapons:not_creative_spec] run function spellbound_weapons:electric_staff/hit


## loop raycast - distance based on enchant level

execute if score @s spellbound_enchantlevel matches 0 unless block ~ ~ ~ #spellbound_weapons:water unless score temp spellbound_count matches 17.. positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast

execute if score @s spellbound_enchantlevel matches 1 unless block ~ ~ ~ #spellbound_weapons:water unless score temp spellbound_count matches 18.. positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast

execute if score @s spellbound_enchantlevel matches 2 unless block ~ ~ ~ #spellbound_weapons:water unless score temp spellbound_count matches 19.. positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast

execute if score @s spellbound_enchantlevel matches 3 unless block ~ ~ ~ #spellbound_weapons:water unless score temp spellbound_count matches 20.. positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast

