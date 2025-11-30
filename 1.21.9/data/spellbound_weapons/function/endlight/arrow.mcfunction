#execute as @e[distance=..2.500,type=!#spellbound_weapons:misc] at @s run summon minecraft:snowball ~ ~3 ~ {Motion:[0.0,-10.0,0.0],Tags:["creatures_nonvariant","spellbound_damagewithuuid_snowball"],LeftOwner:1b,Item:{id:"minecraft:air",count:1}}


#execute as @e[tag=spellbound_damagewithuuid_snowball,type=snowball,sort=nearest,distance=..6] at @s run data modify entity @s Owner set from entity @n[tag=spellbound_endlight_arrow] Owner
#execute as @e[tag=spellbound_damagewithuuid_snowball,type=snowball,sort=nearest,distance=..6] at @s run data modify entity @s Owner set from entity @n[tag=spellbound_endlight_area] Owner

#fire
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run playsound minecraft:block.fire.extinguish block @a[distance=..30] ~ ~ ~ 1.5 1.2
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run particle flame ~ ~ ~ .3 .3 .3 .2 3 force @a[distance=..128]
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run particle large_smoke ~ ~ ~ .3 .3 .3 .1 12 force @a[distance=..128]
execute if entity @s[tag=spellbound_endlight_arrow_flamed] as @e[distance=..2.500,type=!#spellbound_weapons:misc] run data merge entity @s {Fire:60s}
execute if entity @s[tag=spellbound_endlight_arrow_flamed] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spellbound_blazing_sword_area_instant","spellbound_blazing_sword_area_instant9"]}




execute as @a if score @s spellbound_uuid = @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid if score @s spellbound_uuid2 = @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=area_effect_cloud,tag=spellbound_endlight_area] spellbound_uuid4 run tag @s add spellbound_temp5




particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 4 force @a[distance=..64]
particle end_rod ~ ~ ~ .05 .05 .05 .2 15 force @a[distance=..64]
execute as @e[distance=..0.0001,type=!#spellbound_weapons:misc] run damage @s 1 spellbound_weapons:projectile by @p[tag=spellbound_temp5]
execute as @e[distance=0.0001..2.500,type=!#spellbound_weapons:misc] run damage @s 5 spellbound_weapons:projectile by @p[tag=spellbound_temp5]
execute as @s[type=spectral_arrow] as @e[distance=..2.500] run effect give @s glowing 5
execute as @s[tag=spellbound_endlight_area_spectral] as @e[distance=..2.500] run effect give @s glowing 5
playsound block.amethyst_cluster.break block @a[distance=..30] ~ ~ ~ 1.5 1.5
playsound block.amethyst_cluster.break block @a[distance=..30] ~ ~ ~ 1.5 1.5
playsound block.amethyst_cluster.break block @a[distance=..30] ~ ~ ~ 1.5 .5
playsound entity.ender_eye.death block @a[distance=..30] ~ ~ ~ 1.5 .6
playsound entity.ender_eye.death block @a[distance=..30] ~ ~ ~ 1 2
playsound minecraft:block.beacon.power_select block @a[distance=..30] ~ ~ ~ .5 1.25


tag @a remove spellbound_temp5

#death
kill @n[tag=spellbound_endlight_area]
kill @s