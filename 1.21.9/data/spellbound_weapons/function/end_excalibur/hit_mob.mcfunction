
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3,type=!#spellbound_weapons:misc] at @s[type=#spellbound_weapons:small] run particle dragon_breath ~ ~.25 ~ 0 .25 0 .01 14 force @a[distance=..32]
execute as @e[tag=!spellbound_end_excalibur_player,distance=..3,type=!#spellbound_weapons:misc,type=!#spellbound_weapons:small] at @s run particle dragon_breath ~ ~1 ~ 0 .5 0 .01 28 force @a[distance=..32]

#self
damage @s[tag=!spellbound_end_excalibur_player] 3 spellbound_weapons:magic_force by @p[tag=spellbound_end_excalibur_player]

#nearby 3 blocks
execute as @e[tag=!spellbound_end_excalibur_player,distance=0.0001..2.5,type=!#spellbound_weapons:misc] at @s run damage @s 7 spellbound_weapons:magic_force by @p[tag=spellbound_end_excalibur_player]

#nearby 5 blocks edge
execute as @e[tag=!spellbound_end_excalibur_player,distance=2.5..5,type=!#spellbound_weapons:misc] at @s run damage @s 4 spellbound_weapons:magic_force by @p[tag=spellbound_end_excalibur_player]



particle flash{color:[1,1,1,1]} ~ ~1 ~ 0 0 0 1 5 force @a[distance=..64]

particle minecraft:dragon_breath ~ ~1 ~ .5 .5 .5 .08 50 force @a[distance=..64]
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 .2 50 force @a[distance=..64]
particle minecraft:end_rod ~ ~1 ~ 0 0 0 .5 140 force @a[distance=..128]
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.5 20 force @a[distance=..128]
playsound item.trident.thunder player @a[distance=..30] ~ ~ ~ 2 2

execute at @s run scoreboard players set @p spellbound_cooldown 0
