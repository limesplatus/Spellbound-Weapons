scoreboard players add @s spellbound_count 1

#damage hit entity

execute as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_magmus_charger_arrow_area_max] spellbound_uuid4 run tag @s add spellbound_temp5

execute unless score @s spellbound_enchantlevel matches 2.. if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3] run damage @s 8 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 2 if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3] run damage @s 10 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 3 if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3] run damage @s 11 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 4 if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3] run damage @s 12 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]
execute if score @s spellbound_enchantlevel matches 5 if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3] run damage @s 13 spellbound_weapons:explosion_force by @p[tag=spellbound_temp5]

execute if score @s spellbound_count matches 101 as @n[dy=0,type=!#spellbound_weapons:misc,distance=..3,predicate=!spellbound_weapons:not_creative_spec] run playsound minecraft:entity.arrow.hit player @a[distance=..32] ~ ~ ~ 1 .9

execute if score @s spellbound_count matches 101 if entity @p[dy=0,predicate=!spellbound_weapons:not_creative_spec,distance=..3] at @p[tag=spellbound_temp5] run playsound minecraft:entity.arrow.hit_player player @p[tag=spellbound_temp5] ~ ~ ~ 1 .5


tag @a[tag=spellbound_temp5] remove spellbound_temp5

############################################################





execute if score @s spellbound_count matches 101 as @s[tag=spellbound_magmus_charger_arrow_area_max_spectral] as @e[dy=0,type=!#spellbound_weapons:misc,distance=..3] at @s run effect give @s glowing 10



execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101.. run particle flame ~ ~ ~ .05 .05 .05 .1 3 force @a[distance=..128]
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101.. run particle soul_fire_flame ~ ~ ~ .05 .05 .05 .1 3 force @a[distance=..128]


execute if score @s spellbound_count matches 101.. run particle large_smoke ~ ~ ~ .3 .3 .3 .2 10 force @a[distance=..128]
execute if score @s spellbound_count matches 101..115 run playsound minecraft:entity.blaze.hurt player @a[distance=..64] ~ ~ ~ 3 .95

execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101 run summon firework_rocket ~ ~.4 ~
execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 103 run summon firework_rocket ~ ~.4 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;15627074]}]}}}}
execute if score @s[tag=!spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 105 run summon firework_rocket ~ ~.4 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16765764]}]}}}}

#blue
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 101 run summon firework_rocket ~ ~.4 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4877311]}]}}}}
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 103 run summon firework_rocket ~ ~.4 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4367342]}]}}}}
execute if score @s[tag=spellbound_magmus_charger_arrow_max_blue] spellbound_count matches 105 run summon firework_rocket ~ ~.4 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;4517119]}]}}}}

execute if score @s spellbound_count matches 101 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 104 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner
execute if score @s spellbound_count matches 108 run data modify entity @e[limit=1,sort=nearest,type=firework_rocket] Owner set from entity @s data.Owner

execute if score @s spellbound_count matches 108.. run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 5 force @a[distance=..128]
execute if score @s spellbound_count matches 110 run function spellbound_weapons:magmus_charger/arrow/max_hit
execute if score @s spellbound_count matches 113.. run kill @s
