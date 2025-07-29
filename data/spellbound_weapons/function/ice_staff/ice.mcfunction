
execute positioned ~ ~.62 ~ positioned ^ ^ ^-1 run function spellbound_weapons:ice_staff/particle

scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 60..198 run kill @s


data merge entity @s {HasVisualFire:0b,Fire:0b}



execute positioned ~ ~.62 ~ if block ~ ~ ~ water positioned ~ ~-1 ~ run function spellbound_weapons:ice_staff/freeze_water

item replace entity @s armor.head with ice[custom_data={SpellboundIceStaffBlock:1}]

#stuck and squishy
execute if block ~ ~-0.5 ~ lava unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..2,type=slime] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..2,type=magma_cube] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 
execute positioned ~ ~ ~ if entity @e[distance=..4,type=ender_dragon] unless score @s spellbound_count matches 120.. run scoreboard players set @s spellbound_count 199 


#particles
particle snowflake ~ ~.62 ~ .2 .2 .2 .05 1 force @a[distance=..32]

#hit
execute if score @s spellbound_count matches 3..120 if entity @e[distance=..4,dy=0,predicate=!spellbound_weapons:not_creative_spec,type=!#spellbound_weapons:misc,type=!slime,type=!magma_cube] run function spellbound_weapons:ice_staff/break_ice



#smallfireball
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run particle large_smoke ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run playsound block.fire.extinguish neutral @a[distance=..16] ~ ~ ~ 1 2
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[type=small_fireball,distance=..1] run kill @s


#fireball
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[distance=..1.25,type=#spellbound_weapons:fireball] at @s run function spellbound_weapons:ice_staff/incinerate
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[distance=..1.25,type=marker,tag=spellbound_firestaff] at @s run function spellbound_weapons:ice_staff/incinerate
execute if score @s spellbound_count matches 3..120 positioned ~ ~.62 ~ as @e[distance=..1.25,type=marker,tag=trueEnding_ultrafireball] at @s run function spellbound_weapons:ice_staff/incinerate


#execute unless block ~ ~ ~ #spellbound_weapons:permeable unless block ~ ~ ~ frosted_ice if predicate spellbound_weapons:chance/25_percent run summon item ~ ~1 ~ {Item:{id:"minecraft:ice",count:1},Motion:[0.0,0.5,0.0]}
execute if score @s spellbound_count matches 1..120 unless block ~ ~.62 ~ #spellbound_weapons:permeable run function spellbound_weapons:ice_staff/break_ice


execute as @s[type=armor_stand,tag=spellbound_ice_staff_ice] run data merge entity @s {Fire:-1}




#disolving liqurifing liquids 
execute if score @s spellbound_count matches 200.. run function spellbound_weapons:ice_staff/dissolve


#movement

execute if score @s spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.5
execute if score @s spellbound_enchantlevel matches 1 if score @s spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.1
execute if score @s spellbound_enchantlevel matches 2 if score @s spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.1
execute if score @s spellbound_enchantlevel matches 3 if score @s spellbound_count matches 1..120 at @s run tp @s ^ ^ ^.1

execute if score @s spellbound_count matches 200..204 at @s run tp @s ^ ^ ^.15
execute if score @s spellbound_count matches 200..204 at @s run tp @s ^ ^ ^.15
execute if score @s spellbound_count matches 205..221 at @s run tp @s ^ ^ ^.025
execute if score @s spellbound_count matches 222..250 at @s run tp @s ^ ^ ^.005

