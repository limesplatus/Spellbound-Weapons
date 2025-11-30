
tag @s add spellbound_temp_explosion_user

particle explosion_emitter ~ ~-2 ~ 0 0 0 0 1 force @a[distance=..256]
particle explosion ~ ~1 ~ 4 4 4 0 5 force @a[distance=..256]
particle large_smoke ~ ~1 ~ 0 0 0 .2 40 force @a[distance=..64]
particle flame ~ ~1 ~ 0 0 0 .2 40 normal @a[distance=..32]
particle large_smoke ~ ~1 ~ 0 0 0 .1 40 normal @a[distance=..32]
particle lava ~ ~1 ~ 1 1 1 .1 40 normal @a[distance=..32]

playsound entity.generic.explode player @a[distance=..64] ~ ~ ~ 3 .8
playsound entity.blaze.hurt player @a[distance=..32] ~ ~ ~ 2 .65
playsound block.fire.extinguish player @a[distance=..32] ~ ~ ~ 2 .8


particle flash{color:[1,1,1,1]} ~ ~1 ~ 0 0 0 0 6 force @a[distance=..256]


execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-3 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~ ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-3 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~2 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~ ~ ~-3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-2 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-1 ~ ~2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~1 ~ ~-3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~ ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-2 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~ ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~1 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-2 ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-1 ~ ~-2 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~2 ~ ~1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~3 ~ ~ run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~-1 ~ ~-4 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~2 ~ ~3 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~2 ~ ~-1 run function spellbound_weapons:other/asset/summon_fire
execute if predicate spellbound_weapons:chance/33_percent run execute positioned ~ ~ ~3 run function spellbound_weapons:other/asset/summon_fire


execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc] at @s if predicate spellbound_weapons:chance/33_percent run function spellbound_weapons:other/asset/summon_fire


execute as @e[distance=0.001..3,type=!#spellbound_weapons:misc] at @s facing entity @p[scores={spellbound_blazing_cooldown=74..}] feet run function spellbound_weapons:blazing_sword/push_high
execute as @e[distance=3..6,type=!#spellbound_weapons:misc] at @s facing entity @p[scores={spellbound_blazing_cooldown=74..}] feet run function spellbound_weapons:blazing_sword/push

execute as @a[distance=0.001..3,gamemode=!spectator] positioned ~ ~-0.5 ~ run function spellbound_weapons:blazing_sword/push_player_high
execute as @a[distance=3..6,gamemode=!spectator] positioned ~ ~-0.25 ~ run function spellbound_weapons:blazing_sword/push_player


scoreboard players set @s spellbound_blazing_cooldown 0


# break
execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5



# break

execute as @s[predicate=spellbound_weapons:holding/weapon/blazing_sword,predicate=spellbound_weapons:holding/tag/0_durability] run particle block{block_state:"minecraft:netherite_block"} ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/blazing_sword,predicate=spellbound_weapons:holding/tag/0_durability] run playsound entity.item.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/blazing_sword,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air


execute as @e[distance=0.001..4,type=!#spellbound_weapons:misc] at @s run damage @s 10 spellbound_weapons:explosion by @p
execute as @e[distance=4..6,type=!#spellbound_weapons:misc] at @s run damage @s 5 spellbound_weapons:explosion by @p

tag @s remove spellbound_temp_explosion_user

execute as @s[tag=!spellbound_tip.blazeblade_2] run function spellbound_weapons:other/tips/checkmark
tag @s[tag=!spellbound_tip.blazeblade_2] add spellbound_tip.blazeblade_2