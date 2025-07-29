scoreboard players add @s spellbound_count 1

particle sweep_attack ~ ~ ~
particle end_rod ~ ~ ~ .3 .1 .3 .03 1 force @a[distance=..64]

particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^ ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]

particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^-0.2 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^-0.4 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]
particle dust_color_transition{from_color:[0.980,0.431,1.000],scale:1,to_color:[0.000,0.137,0.820]} ^-0.6 ^ ^-.2 0 0 0 1 0 normal @a[distance=..32]


#damage
execute if entity @e[dy=0,distance=..5,type=!#spellbound_weapons:misc,predicate=!spellbound_weapons:not_creative_spec] as @a if score @s spellbound_uuid = @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid if score @s spellbound_uuid2 = @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid2 if score @s spellbound_uuid3 = @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid3 if score @s spellbound_uuid4 = @n[type=marker,tag=spellbound_moonlight_edge_beam] spellbound_uuid4 run tag @s add spellbound_temp5


execute as @e[dy=0,distance=..5,type=player,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=false},predicate=!spellbound_weapons:taking_damage] at @s run damage @s 1 spellbound_weapons:magic by @p[tag=spellbound_temp5]
execute as @e[dy=0,distance=..5,type=player,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true},predicate=!spellbound_weapons:taking_damage] at @s run function spellbound_weapons:other/action/damage_shield
execute as @e[dy=0,distance=..5,type=player,predicate=!spellbound_weapons:not_creative_spec] if entity @s[advancements={spellbound_weapons:used_shield=true}] as @n[type=marker,tag=spellbound_moonlight_edge_beam] at @s run function spellbound_weapons:moonlight_edge/beam_hit
execute as @e[dy=0,distance=..5,type=!player,type=!#spellbound_weapons:misc,predicate=!spellbound_weapons:not_creative_spec] run damage @s 1 spellbound_weapons:magic by @p[tag=spellbound_temp5]

tag @a remove spellbound_temp5

execute unless block ~ ~ ~ #spellbound_weapons:permeable run function spellbound_weapons:moonlight_edge/beam_hit




tp @s ^ ^ ^.75

execute if score @s spellbound_count matches 12.. run kill @s
