
scoreboard players add @s spellbound_bone_wand_sneak_timer 1


# break all with triple shift
execute if score @s spellbound_bone_wand_sneak_count matches 3.. run function spellbound_weapons:bone_wand/remove_existing_bone_blocks

execute if score @s spellbound_bone_wand_sneak_timer matches 15.. run scoreboard players reset @s spellbound_bone_wand_sneak_count
execute if score @s spellbound_bone_wand_sneak_timer matches 15.. run scoreboard players reset @s spellbound_bone_wand_sneak_timer