# break
execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/20_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5



# break

execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"gold_block"} ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/golden_ocean_edge,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


# water is special 
execute if block ~ ~ ~ lava run playsound minecraft:block.fire.extinguish player @a[distance=..30] ~ ~ ~ 1.25 1.25
execute unless block ~ ~ ~ lava run effect give @s[distance=..2.5] water_breathing 1 5 false
#execute unless block ~ ~ ~ lava run effect give @s[distance=..2.5] dolphins_grace 1 5 false
execute unless block ~ ~ ~ lava run playsound minecraft:entity.dolphin.splash player @a[distance=..30] ~ ~ ~ 1.25 1.5
particle effect ~ ~.5 ~ .7 .7 .7 .1 40 force @a[distance=..64]
#playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ 1.25 .75
execute unless block ~ ~ ~ lava run playsound minecraft:item.trident.riptide_3 ambient @a[distance=..30] ~ ~ ~ 2 1.25
scoreboard players reset @s spellbound_golden_ocean_edge_effect
function spellbound_weapons:golden_ocean_edge/effect
particle poof ~ ~.5 ~ .3 .5 .3 .2 15 force @a[distance=..32]
playsound minecraft:ambient.underwater.enter player @a[distance=..32] ~ ~ ~ 1 1.5

execute if block ~ ~ ~ lava run particle large_smoke ~ ~1 ~ .3 .5 .3 .05 30 force @a[distance=..32]

execute unless block ~ ~ ~ lava run playsound minecraft:entity.zombie.converted_to_drowned player @a[distance=..30] ~ ~ ~ 1.25 1.75
playsound minecraft:entity.generic.swim player @a[distance=..30] ~ ~ ~ 1.25 .75

scoreboard players set @s spellbound_golden_ocean_edge_cooldown 0



tag @s add spellbound_golden_ocean_edge_player

execute unless predicate spellbound_weapons:holding/spellbound_sword run function spellbound_weapons:other/action/set_cooldowns_to_0