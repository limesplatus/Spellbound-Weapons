tag @p[scores={spellbound_blowgun=1..}] add spellbound_player_immunetodart
tag @s add spellbound_arrow_checked2
execute as @p[scores={spellbound_blowgun=1..}] at @s anchored eyes positioned ^ ^ ^1.5 run summon marker ~ ~ ~ {Tags:["spellbound_blowgun_arrow_raycast","spellbound_marker"]}

#low charge
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches ..8 positioned ^ ^ ^1.5 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_slow

#somewhat charged
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 8..15 positioned ^ ^ ^1.5 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_normal

#fully charged
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 16.. positioned ^ ^ ^1.5 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_fast

#extra
execute as @p[scores={spellbound_blowgun=1..}] at @s if score @s spellbound_blowgun_cooldown matches 40.. positioned ^ ^ ^1.5 run tag @e[limit=1,sort=nearest,type=marker,tag=spellbound_blowgun_arrow_raycast] add spellbound_blowgun_arrow_raycast_speed_biggy
execute as @p[scores={spellbound_blowgun=1..}] at @s anchored eyes positioned ^ ^ ^1.5 run data modify entity @n[type=marker,tag=spellbound_blowgun_arrow_raycast] data.Owner set from entity @s UUID

#uuid
execute as @p[scores={spellbound_blowgun=1..}] store result score @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute as @p[scores={spellbound_blowgun=1..}] store result score @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute as @p[scores={spellbound_blowgun=1..}] store result score @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute as @p[scores={spellbound_blowgun=1..}] store result score @n[type=marker,tag=spellbound_blowgun_arrow_raycast] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4




execute as @p[scores={spellbound_blowgun=1..}] unless entity @s[predicate=!spellbound_weapons:holding/enchant/infinity,predicate=!spellbound_weapons:holding/enchant/infinity_offhand] as @n[type=marker] run tag @s add spellbound_blowgun_arrow_raycast_infinity
execute as @p[scores={spellbound_blowgun=1..}] if score @s spellbound_blowgun_cooldown matches 16.. unless entity @s[predicate=!spellbound_weapons:holding/enchant/flame,predicate=!spellbound_weapons:holding/enchant/flame_offhand] as @n[type=marker] run tag @s add spellbound_blowgun_arrow_raycast_flame


execute as @n[type=marker,tag=spellbound_blowgun_arrow_raycast] at @s store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_blowgun=1..}] Rotation[0]
execute as @n[type=marker,tag=spellbound_blowgun_arrow_raycast] at @s store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_blowgun=1..}] Rotation[1]


playsound minecraft:item.crossbow.shoot player @a[distance=..30] ~ ~ ~ 1.5 1.5
execute anchored eyes run kill @s[type=arrow]

execute as @p[scores={spellbound_blowgun=1..}] at @s run scoreboard players set @s spellbound_blowgun_cooldown 0

#tip
execute as @p[scores={spellbound_blowgun=1..}] at @s as @s[tag=spellbound_tip.blowgun_1,tag=!spellbound_tip.blowgun_2] run function spellbound_weapons:other/tips/checkmark
execute as @p[scores={spellbound_blowgun=1..}] at @s run tag @s add spellbound_tip.blowgun_2