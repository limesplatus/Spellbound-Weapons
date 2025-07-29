#mainly for optimization, if a entity marked with "spellbound_marker" exists these will all run

#these are for markers, a good chunk of the datapack still uses area of effect clouds as invisibile entities /:


execute if entity @s[tag=spellbound_blowgun_arrow_raycast] run function spellbound_weapons:blowgun/dart

execute if entity @s[tag=spellbound_crucible_the_light_is_coming] run function spellbound_weapons:crucible/the_light_is_coming_down

execute if entity @s[tag=spellbound_magmus_charger_arrow_area_max] run function spellbound_weapons:magmus_charger/arrow/max_main

execute if entity @s[tag=spellbound_electricity] run function spellbound_weapons:electric_staff/electricity

execute if entity @s[tag=spellbound_crucible_releasedenergy] at @s run function spellbound_weapons:crucible/energy

execute if entity @s[tag=spellbound_ice_staff_snow] at @s run function spellbound_weapons:ice_staff/snow

execute if entity @s[tag=spellbound_sand_wind] at @s run function spellbound_weapons:windswept_sword/wind

execute if entity @s[tag=spellbound_dusties] at @s run function spellbound_weapons:withering_sword/dusties_homing

execute if entity @s[tag=spellbound_fire] at @s run function spellbound_weapons:other/asset/fire

execute if entity @s[tag=spellbound_hammervector] unless entity @p[distance=..32,gamemode=!spectator] run kill @s

execute if entity @s[tag=spellbound_evokerattack] run function spellbound_weapons:evokers_wrath/marker

execute if entity @s[tag=spellbound_evoker_vex] at @s run function spellbound_weapons:evokers_wrath/vex

execute if entity @s[tag=spellbound_firestaff] at @s run function spellbound_weapons:fire_staff/marker

execute if entity @s[tag=spellbound_thorn] at @s run function spellbound_weapons:thorn_blossom/thorn

execute if entity @s[tag=spellbound_bone_wand_area] run function spellbound_weapons:bone_wand/areas
