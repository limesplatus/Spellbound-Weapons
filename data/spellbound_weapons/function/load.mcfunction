
execute unless data storage vanilla_refresh_config:config config{load_message:0} unless score load_message refresh_settings matches ..0 run tellraw @a [{"translate": "Successfully loaded","color": "gray"},{"translate": " Spellbound Weapons v4.1.6","color": "green"}]

scoreboard objectives add refresh_settings dummy

### Pack Installed

scoreboard objectives add splatus.packs_installed dummy
scoreboard players set SpellboundWeapons splatus.packs_installed 1 

###

scoreboard objectives add spellbound_playerhit custom:damage_dealt
scoreboard objectives add spellbound_playerhit2 custom:damage_dealt_absorbed

scoreboard objectives add spellbound_is_sneaking dummy

scoreboard objectives add spellbound_cooldown dummy
scoreboard objectives add spellbound_end dummy
scoreboard objectives add spellbound_count dummy
scoreboard objectives add spellbound_blazing dummy
scoreboard objectives add spellbound_blazing_cooldown dummy

scoreboard objectives add spellbound_curse dummy
scoreboard objectives add spellbound_curse_time dummy
scoreboard objectives add spellbound_curse_count dummy

scoreboard objectives add spellbound_checkmarktip dummy

scoreboard objectives add spellbound_f_staff dummy
scoreboard objectives add spellbound_f_staff_cooldown dummy
scoreboard objectives add spellbound_f_staff_combo dummy

scoreboard objectives add spellbound_e_staff dummy
scoreboard objectives add spellbound_e_staff_cooldown dummy

scoreboard objectives add spellbound_i_staff dummy
scoreboard objectives add spellbound_i_staff_cooldown dummy


scoreboard objectives add spellbound_x1 dummy
scoreboard objectives add spellbound_y1 dummy
scoreboard objectives add spellbound_z1 dummy
scoreboard objectives add spellbound_x2 dummy
scoreboard objectives add spellbound_y2 dummy
scoreboard objectives add spellbound_z2 dummy

scoreboard objectives add spellbound_sand dummy
scoreboard objectives add spellbound_windswept_levitation dummy
scoreboard objectives add spellbound_windswept_cooldown dummy
scoreboard objectives add spellbound_withering dummy

scoreboard objectives add spellbound_freeze dummy

scoreboard objectives add spellbound_delete dummy
scoreboard objectives add spellbound_delete_isdeleted dummy

scoreboard objectives add spellbound_hammer dummy
scoreboard objectives add spellbound_hammer_cooldown dummy

scoreboard objectives add spellbound_dagger dummy
#scoreboard objectives add spellbound_dagger_cooldown dummy

scoreboard objectives add spellbound_evoker dummy
scoreboard objectives add spellbound_evoker_cooldown dummy

scoreboard objectives add spellbound_bonewand dummy

scoreboard objectives add spellbound_right_click minecraft.used:fishing_rod

scoreboard objectives add spellbound_zgcrossbow dummy
scoreboard objectives add spellbound_uuid dummy
scoreboard objectives add spellbound_uuid2 dummy
scoreboard objectives add spellbound_uuid3 dummy
scoreboard objectives add spellbound_uuid4 dummy


scoreboard objectives add spellbound_netherlight_cooldown dummy
scoreboard objectives add spellbound_netherlight dummy
scoreboard objectives add spellbound_netherlight_stun dummy


scoreboard objectives add spellbound_curse_cooldown dummy

scoreboard objectives add spellbound_chainfiring dummy
scoreboard objectives add spellbound_chainfiring_cooldown dummy
scoreboard objectives add spellbound_chainfiring_arrow_count dummy

scoreboard objectives add spellbound_blowgun dummy
scoreboard objectives add spellbound_raycast dummy
scoreboard objectives add spellbound_injungle dummy
scoreboard objectives add spellbound_injungleS dummy
scoreboard objectives add spellbound_injungleB dummy

scoreboard objectives add spellbound_endlight dummy
scoreboard objectives add spellbound_endlight_cooldown dummy


scoreboard objectives add spellbound_israycasting dummy
scoreboard objectives add spellbound_raycast_range dummy

scoreboard objectives add spellbound_magmus_charger dummy
scoreboard objectives add spellbound_magmus_charger_cooldown dummy

scoreboard objectives add spellbound_golden_ocean_edge dummy
scoreboard objectives add spellbound_golden_ocean_edge_cooldown dummy
scoreboard objectives add spellbound_golden_ocean_edge_carried dummy

scoreboard objectives add spellbound_crucible dummy
scoreboard objectives remove spellbound_crucible_energy
scoreboard objectives add spellbound_crucible_energy dummy
scoreboard objectives add spellbound_crucible_stunned dummy


scoreboard objectives add spellbound_moonlight_edge dummy
scoreboard objectives add spellbound_moonlight_edge_cooldown dummy
scoreboard objectives add spellbound_moonlight_edge_usedbeam dummy
scoreboard objectives add spellbound_moonlight_edge_fall_speed dummy


scoreboard objectives add spellbound_item_merging dummy
scoreboard objectives add spellbound_rotation dummy
scoreboard objectives add spellbound_rotation2 dummy
scoreboard objectives add spellbound_fallspeed dummy

scoreboard objectives add spellbound_hammer_stun dummy
scoreboard objectives add spellbound_golden_ocean_edge_effect dummy
scoreboard objectives add spellbound_golden_ocean_edge_effect2 dummy

scoreboard objectives add spellbound_echo_wand dummy
scoreboard objectives add spellbound_echo_wand_cooldown dummy



scoreboard objectives add spellbound_bone_wand_sneak_count dummy
scoreboard objectives add spellbound_bone_wand_sneak_timer dummy

scoreboard objectives add spellbound_posY dummy
scoreboard objectives add spellbound_count2 dummy

scoreboard objectives add spellbound_randomizer_output dummy

scoreboard objectives add spellbound_hammer_move dummy

scoreboard objectives add spellbound_durability_percent dummy
scoreboard objectives add spellbound_durability_max dummy


scoreboard objectives add spellbound_sand_cooldown dummy
scoreboard objectives add spellbound_sand_jump dummy
scoreboard objectives add spellbound_jump custom:jump

scoreboard objectives add spelbloud_crucible_lastused dummy

scoreboard objectives add spellbound_blastoff dummy

scoreboard objectives add spellbound_blowgun_cooldown dummy

scoreboard objectives add spellbound_storage dummy

team add spellbound_red
team modify spellbound_red color red

scoreboard objectives add spellbound_weapon dummy

scoreboard objectives add spellbound_crucible_dye dummy

scoreboard objectives add spellbound_death deathCount


scoreboard objectives add spellbound_damage dummy

scoreboard objectives add spellbound_withering_cooldown dummy
scoreboard objectives add spellbound_damagetaken custom:damage_taken

scoreboard objectives add spellbound_withering_energy dummy
scoreboard objectives add spellbound_withering_hitcool dummy
scoreboard objectives add spellbound_crucible_hitcool dummy

scoreboard objectives add spellbound_wither_lastused dummy


scoreboard objectives add spellbound_customkill dummy

scoreboard objectives add spellbound_thorn dummy
scoreboard objectives add spellbound_thorn_cooldown dummy
scoreboard objectives add spellbound_enchantlevel dummy


scoreboard objectives add spellbound_clock dummy
scoreboard objectives add spellbound_settings dummy


#schedule clocks

schedule function spellbound_weapons:tick_clocks/2tick 2t

schedule function spellbound_weapons:tick_clocks/4tick 4t

schedule function spellbound_weapons:tick_clocks/5tick 5t

schedule function spellbound_weapons:tick_clocks/10tick 10t

scoreboard objectives add spellbound_installed dummy

### check installs

scoreboard players set unbound_items spellbound_installed 0
execute store result score unbound_items spellbound_installed run function unbound:installed

function spellbound_weapons:other/action/default_settings
