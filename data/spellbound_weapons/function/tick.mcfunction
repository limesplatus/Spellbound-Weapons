#absorption hit
scoreboard players set @a[scores={spellbound_playerhit2=1..}] spellbound_playerhit 1

########## CLOCKS ################

scoreboard players add 4tick spellbound_clock 1

scoreboard players add 5tick spellbound_clock 1

scoreboard players add 2tick spellbound_clock 1

scoreboard players add 10tick spellbound_clock 1





#########################################################################################################################################


#uuid checks
execute as @a unless score @s spellbound_uuid matches -2147483648.. run function spellbound_weapons:other/action/uuid_check
execute as @a[predicate=spellbound_weapons:holding/spellbound_item] at @s as @e[distance=..6,type=#spellbound_weapons:chainfiring_ammo,tag=!spellbound_arrow_checked] run function spellbound_weapons:other/action/arrow_check

# DETECT WHETHER HOLDING ITEM OR NOT - Inputs into scoreboards
    execute as @a[predicate=spellbound_weapons:holding/spellbound_item,predicate=!spellbound_weapons:holding/tag/netherite_sword] run scoreboard players set @s spellbound_weapon 1

    execute as @a[scores={spellbound_weapon=1..}] at @s if entity @n[distance=..256,type=marker,tag=spellbound_region_disable_weapons] run function spellbound_weapons:other/checkitem_set_0

    execute as @a[scores={spellbound_weapon=1..}] run function spellbound_weapons:other/checkitem
    


# functions for general items
execute as @a[scores={spellbound_end=1..}] at @s run function spellbound_weapons:end_excalibur/end_excalibur
execute as @a[scores={spellbound_blazing=1..}] at @s run function spellbound_weapons:blazing_sword/blazing_sword
execute as @a[scores={spellbound_curse=1..}] run function spellbound_weapons:cursed_sea_blade/cursed_sea_blade

execute as @a[scores={spellbound_sand=1..}] at @s run function spellbound_weapons:windswept_sword/windswept_sword
execute as @a[scores={spellbound_withering=1..}] at @s run function spellbound_weapons:withering_sword/withering_sword
execute as @a[scores={spellbound_hammer=1..}] at @s run function spellbound_weapons:mega_hammer/mega_hammer
execute as @a[scores={spellbound_dagger=1..}] run function spellbound_weapons:dagger/dagger
execute as @a[scores={spellbound_evoker=1..}] at @s run function spellbound_weapons:evokers_wrath/evokers_wrath
execute as @a[scores={spellbound_bonewand=1..},predicate=!spellbound_weapons:holding/tag/bow_both,tag=!spellbound_disablebonewand] at @s run function spellbound_weapons:bone_wand/bone_wand


execute as @a[scores={spellbound_crucible=1..}] at @s run function spellbound_weapons:crucible/crucible
execute as @a[scores={spellbound_golden_ocean_edge=1..}] at @s run function spellbound_weapons:golden_ocean_edge/golden_ocean_edge
execute as @a[scores={spellbound_moonlight_edge=1..}] at @s run function spellbound_weapons:moonlight_edge/moonlight_edge


execute as @a[scores={spellbound_f_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:fire_staff/root
execute as @a[scores={spellbound_i_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:ice_staff/root
execute as @a[scores={spellbound_e_staff=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:electric_staff/root

execute as @a[scores={spellbound_zgcrossbow=1..},predicate=!spellbound_weapons:holding/tag/bow_both] run function spellbound_weapons:zgcrossbow/zgcrossbow
execute as @a[scores={spellbound_chainfiring=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:chainfiring/chainfiring
execute as @a[scores={spellbound_blowgun=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:blowgun/blowgun
execute as @a[scores={spellbound_endlight=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:endlight/endlight
execute as @a[scores={spellbound_magmus_charger=1..},predicate=!spellbound_weapons:holding/tag/bow_both] at @s run function spellbound_weapons:magmus_charger/magmus_charger

execute as @a[scores={spellbound_thorn=1..}] at @s run function spellbound_weapons:thorn_blossom/thorn_blossom

########################################################################################################################################################

### switch back to normal attributes
function spellbound_weapons:cooldowns

########################################################################################################################################################


# mob spawning 
execute if predicate spellbound_weapons:weapons_achieveable as @e[type=pillager,tag=!spellbound_spawnattempted,team=!in.sanctum] run function spellbound_weapons:chainfiring/spawn
#execute if predicate spellbound_weapons:weapons_achieveable as @e[type=wither_skeleton,tag=!spellbound_spawnattempted] run function spellbound_weapons:blazing_sword/spawn
execute if predicate spellbound_weapons:weapons_achieveable as @e[type=zombie,tag=!spellbound_spawnattempted] run function spellbound_weapons:dagger/spawn
#execute if predicate spellbound_weapons:weapons_achieveable as @e[type=husk,tag=!spellbound_spawnattempted] run function spellbound_weapons:windswept_sword/spawn



########################################################################################################################################################

#markers
execute as @e[type=#spellbound_weapons:custom,tag=spellbound_marker] at @s run function spellbound_weapons:other/weapon_entity

execute as @e[type=bat,tag=spellbound_dusties] at @s run function spellbound_weapons:withering_sword/dusties


#hammer velocity
execute as @a[scores={spellbound_hammer_move=-2147483648..}] at @s run function spellbound_weapons:mega_hammer/player_move

#levitate windsweeper
execute as @a[scores={spellbound_windswept_levitation=1..}] at @s run function spellbound_weapons:windswept_sword/levitate

#ITEM ENTITIES --------------------------------------------------------------------------------------

execute as @e[type=#spellbound_weapons:chainfiring_ammo,tag=spellbound_zgcrossbow_arrow] at @s run function spellbound_weapons:zgcrossbow/arrow
execute as @e[type=#spellbound_weapons:arrow,tag=spellbound_endlight_arrow] at @s run function spellbound_weapons:endlight/arrow_info
execute as @e[type=#spellbound_weapons:arrow,tag=spellbound_magmus_charger_arrow] at @s run function spellbound_weapons:magmus_charger/arrow/medium_arrow


execute as @e[type=#spellbound_weapons:fish,tag=spellbound_cursedfish] at @s run function spellbound_weapons:cursed_sea_blade/the_actual_thing_is_cursed


#areas
execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] at @e[distance=..5,type=!#spellbound_weapons:misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function spellbound_weapons:magmus_charger/arrow/medium_arrow_hit
execute as @e[type=area_effect_cloud,tag=spellbound_magmus_charger_arrow_area_mid] at @s unless entity @e[tag=spellbound_magmus_charger_arrow,distance=..5] run function spellbound_weapons:magmus_charger/arrow/medium_arrow_hit

execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] at @e[distance=..5,type=!#spellbound_weapons:misc,sort=nearest,limit=1,nbt={HurtTime:10s}] run function spellbound_weapons:endlight/arrow
execute as @e[type=area_effect_cloud,tag=spellbound_endlight_area] at @s unless entity @e[tag=spellbound_endlight_arrow,distance=..5] run function spellbound_weapons:endlight/arrow





execute as @e[type=!#spellbound_weapons:misc,scores={spellbound_blastoff=1..}] at @s run function spellbound_weapons:magmus_charger/blastoff


execute as @e[scores={spellbound_crucible_stunned=1..}] at @s run function spellbound_weapons:crucible/stunned
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave] at @s run function spellbound_weapons:golden_ocean_edge/wave
execute as @e[type=area_effect_cloud,tag=spellbound_golden_ocean_edge_wave2] at @s run function spellbound_weapons:golden_ocean_edge/wave

execute as @e[tag=spellbound_golden_ocean_edge_iscarried] at @s run function spellbound_weapons:golden_ocean_edge/carried
execute as @e[type=marker,tag=spellbound_moonlight_edge_beam] at @s run function spellbound_weapons:moonlight_edge/beam
execute as @e[type=area_effect_cloud,tag=spellbound_moonlight_edge_heavybeam] at @s run function spellbound_weapons:moonlight_edge/heavy_beam



execute as @e[scores={spellbound_hammer_stun=1..}] at @s run function spellbound_weapons:mega_hammer/stun
execute as @a[scores={spellbound_golden_ocean_edge_effect=1..}] at @s run function spellbound_weapons:golden_ocean_edge/effect
execute as @a[scores={spellbound_golden_ocean_edge_effect2=1..}] at @s run function spellbound_weapons:golden_ocean_edge/jump

execute as @e[type=!#spellbound_weapons:misc,scores={spellbound_curse_time=1..}] at @s run function spellbound_weapons:other/cursed
execute as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard",components:{"minecraft:custom_data":{"DetectCursedMobDeath":1b}}}}] at @s run function spellbound_weapons:cursed_sea_blade/fish



execute as @a at @s store result score @s spellbound_fallspeed run data get entity @s Motion[1] 100


execute as @e[type=fireball,tag=spellbound_firestaff_fireball] at @s run tp @e[type=area_effect_cloud,tag=spellbound_firestaff_area,distance=..4,sort=nearest,limit=1] @s

execute as @e[type=#spellbound_weapons:chainfiring_ammo,tag=spellbound_player3] at @s rotated as @p run function spellbound_weapons:other/target_forward3



### RIGHT CLICK 
scoreboard players set @a[scores={spellbound_right_click=1..}] spellbound_right_click 0


#### FROZEN ###
execute as @e[type=armor_stand,tag=spellbound_ice_staff_ice] at @s positioned ~ ~1 ~ run function spellbound_weapons:ice_staff/ice
execute as @e[scores={spellbound_freeze=1..}] at @s run function spellbound_weapons:ice_staff/freeze


#execute as @e[type=skeleton] store result score @s b run data get entity @s HandItems[0].tag.SpellboundChainfiring
#execute as @e[type=pillager] store result score @s spellbound_chainfiring run data get entity @s HandItems[0].tag.SpellboundChainfiring



### DAMAGE DEALT 
execute as @a[scores={spellbound_playerhit=1..}] at @s run function spellbound_weapons:hit

#reset
scoreboard players set @a[scores={spellbound_playerhit=1..}] spellbound_playerhit 0
scoreboard players set @a[scores={spellbound_playerhit2=1..}] spellbound_playerhit2 0

scoreboard players set @a[scores={spellbound_death=1..}] spellbound_death 0



execute as @a unless entity @s[predicate=!spellbound_weapons:holding/tag/no,predicate=!spellbound_weapons:holding/tag/no_offhand] run function spellbound_weapons:other/action/no

advancement revoke @a only spellbound_weapons:used_shield
advancement revoke @a only spellbound_weapons:player_hurt
advancement revoke @a only spellbound_weapons:magmus_charger



tag @e[type=#spellbound_weapons:chainfiring_ammo] add spellbound_arrow_checked2
execute as @a[scores={spellbound_death=1..}] run function spellbound_weapons:other/action/death


scoreboard players set @a spellbound_jump 0

execute as @a[predicate=spellbound_weapons:holding/spellbound_sword] at @s run function spellbound_weapons:extra_weapons/spellbound_sword

execute as @a[predicate=spellbound_weapons:open_spellbound_loot_chest] at @s run function spellbound_weapons:chest_insert/open_chest