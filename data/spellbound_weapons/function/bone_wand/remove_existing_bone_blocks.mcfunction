#set bone block air
execute as @e[type=marker,tag=spellbound_bone_wand_area] if score @s spellbound_uuid = @p spellbound_uuid if score @s spellbound_uuid2 = @p spellbound_uuid2 if score @s spellbound_uuid3 = @p spellbound_uuid3 if score @s spellbound_uuid4 = @p spellbound_uuid4 at @s run fill ~ ~ ~ ~ ~ ~ air replace bone_block

#weapon tip
execute as @s[tag=spellbound_tip.bone_wand_2,tag=!spellbound_tip.bone_wand_3] run function spellbound_weapons:other/tips/checkmark
execute as @s[tag=spellbound_tip.bone_wand_2,tag=!spellbound_tip.bone_wand_3] run tag @s add spellbound_tip.bone_wand_3

playsound minecraft:block.deepslate_tiles.break player @a[distance=..25] ~ ~ ~ .3 .5
playsound minecraft:block.bone_block.break player @a[distance=..25] ~ ~ ~ .5 .5

scoreboard players reset @s spellbound_bone_wand_sneak_timer
scoreboard players reset @s spellbound_bone_wand_sneak_count

particle minecraft:poof ~ ~.5 ~ .3 .4 .3 .05 12 force @a[distance=..32]