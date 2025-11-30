

tag @s add spellbound_player_immunetomoonlightedge

# break
execute as @s[predicate=!spellbound_weapons:holding/enchant/unbreaking2,predicate=!spellbound_weapons:holding/enchant/unbreaking3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1
execute as @s[predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.1

execute as @s[predicate=spellbound_weapons:holding/weapon/moonlight_edge,predicate=spellbound_weapons:holding/tag/0_durability] run particle minecraft:block{block_state:"amethyst_block"} ~ ~1 ~ .4 .3 .4 .4 30 normal
execute as @s[predicate=spellbound_weapons:holding/weapon/moonlight_edge,predicate=spellbound_weapons:holding/tag/0_durability] run playsound item.shield.break player @a[distance=..16] ~ ~ ~ 1 1
execute as @s[predicate=spellbound_weapons:holding/weapon/moonlight_edge,predicate=spellbound_weapons:holding/tag/0_durability] run item replace entity @s weapon.mainhand with air

execute as @s[predicate=spellbound_weapons:holding/enchant/sweeping_edge3] positioned ~ ~.68 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {Particle:{type:"minecraft:block",block_state:"minecraft:air"},Duration:999999999,Tags:["spellbound_moonlight_edge_heavybeam","spellbound_moonlight_edge_heavybeam_sweeping"],CustomName:'{"translate":"Light Beam"}'}

execute as @s[predicate=!spellbound_weapons:holding/enchant/sweeping_edge3] positioned ~ ~.68 ~ run summon minecraft:area_effect_cloud ^ ^ ^1 {Particle:{type:"minecraft:block",block_state:"minecraft:air"},Duration:999999999,Tags:["spellbound_moonlight_edge_heavybeam"],CustomName:'{"translate":"Light Beam"}'}

execute at @s store result score @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute at @s store result score @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute at @s store result score @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute at @s store result score @n[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4





playsound minecraft:block.amethyst_block.break player @a[distance=..20] ~ ~ ~ 1.35 .5
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 .75
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 .75
playsound minecraft:entity.vex.hurt player @a[distance=..20] ~ ~ ~ 1.25 1
playsound minecraft:block.amethyst_cluster.step player @a[distance=..20] ~ ~ ~ 1.25 1.25
playsound minecraft:block.amethyst_cluster.step player @a[distance=..20] ~ ~ ~ 1.25 1
playsound minecraft:block.amethyst_cluster.place player @a[distance=..20] ~ ~ ~ 1 .9
playsound minecraft:block.beacon.power_select player @a[distance=..20] ~ ~ ~ .5 1.15

#tag @s add spellbound_player_immunetomoonlightedge
#execute as @e[distance=..4,tag=!spellbound_player_immunetomoonlightedge] run function spellbound_weapons:other/damage/entity_damage6


title @s actionbar {"text":""}

particle end_rod ~ ~.5 ~ .5 .8 .5 .2 45 force @a[distance=..64]
particle flash{color:[1,1,1,1]} ~ ~.5 ~ 0 0 0 .08 1 force @a[distance=..64]
#effect give @s resistance 2 2 false

execute unless predicate spellbound_weapons:holding/spellbound_sword run function spellbound_weapons:other/action/set_cooldowns_to_0
scoreboard players set @s spellbound_moonlight_edge_cooldown -1