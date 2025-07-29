
scoreboard players add @s spellbound_count 1
execute if score @s spellbound_count matches 1 store result entity @s Rotation[1] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[1]
execute if score @s spellbound_count matches 1 store result entity @s Rotation[0] float 1 run data get entity @p[scores={spellbound_moonlight_edge=1..}] Rotation[0]

particle sweep_attack ~ ~ ~ 0 0 0 .03 1 force @a[distance=..128]
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..64]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^ ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^-0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^-0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1.2,to_color:[0.000,0.137,0.820]} ^-0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]



#damage
execute if score @s spellbound_count matches 2.. positioned ~ ~ ~ if entity @e[distance=..5,dy=0,type=!#spellbound_weapons:misc,predicate=!spellbound_weapons:not_creative_spec] as @a if score @s spellbound_uuid = @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid if score @s spellbound_uuid2 = @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid4 run tag @s add spellbound_temp5

execute if score @s spellbound_count matches 2.. positioned ~ ~ ~ as @e[distance=..5,dy=0,type=player,tag=!spellbound_player_usingbeam,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true}] at @s run function spellbound_weapons:moonlight_edge/shield
execute if score @s spellbound_count matches 2.. positioned ~ ~ ~ as @e[distance=..5,dy=0,type=player,tag=!spellbound_player_usingbeam,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=false},predicate=!spellbound_weapons:taking_damage] at @s run damage @s 8 spellbound_weapons:magic by @p[tag=spellbound_temp5]




execute if score @s spellbound_count matches 2.. positioned ~ ~ ~ unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:moonlight_edge/beam_hit

execute if score @s spellbound_count matches 2.. positioned ~ ~ ~ as @e[distance=..5,dy=0,predicate=!spellbound_weapons:not_creative_spec,type=!player,type=!#spellbound_weapons:misc,tag=!spellbound_player_usingbeam] run damage @s 8 spellbound_weapons:magic by @p[tag=spellbound_temp5]


tag @a remove spellbound_temp5

execute at @s if score @s spellbound_count matches 2.. run tp @s ^ ^ ^1.25
execute at @s if score @s[tag=spellbound_moonlight_edge_heavybeam_sweeping] spellbound_count matches 2.. run tp @s ^ ^ ^0.3125


execute if score @s spellbound_count matches 30.. run kill @s
