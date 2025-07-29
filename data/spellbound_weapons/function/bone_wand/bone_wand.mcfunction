



# box preview
execute positioned ^ ^ ^1.5 align zyx positioned ~.5 ~1 ~.5 run function spellbound_weapons:bone_wand/box


# bobber
kill @e[type=fishing_bobber,distance=..4,sort=nearest,limit=1]


# break
execute if entity @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/tag/0_durability] run function spellbound_weapons:bone_wand/durability_break

execute if entity @s[predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/tag/0_durability_offhand] run function spellbound_weapons:bone_wand/durability_break



#sneak detect (triple shift)

    #detect sneak
    execute if entity @s[predicate=spellbound_weapons:sneaking,tag=!spellbound_player_sneaking] run function spellbound_weapons:bone_wand/sneak
    execute if entity @s[predicate=!spellbound_weapons:sneaking,tag=spellbound_player_sneaking] run tag @s remove spellbound_player_sneaking

    #timer (triple click shift in 3 seconds)
    #break all
    execute if score @s spellbound_bone_wand_sneak_timer matches 1.. run function spellbound_weapons:bone_wand/sneak_timer





#wall sneak right click
execute unless predicate spellbound_weapons:player_moving if predicate spellbound_weapons:sneaking as @s[scores={spellbound_right_click=1..}] run function spellbound_weapons:bone_wand/right_click_wall

### right click
execute as @s[scores={spellbound_right_click=1..},tag=!spellbound_bone_wand_right_clicked] positioned ~ ~1 ~ positioned ^ ^ ^1.5 align zyx positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #spellbound_weapons:bone_wand_replaceable run function spellbound_weapons:bone_wand/right_click

tag @s remove spellbound_bone_wand_right_clicked



#tips
execute as @s[tag=!spellbound_tip.bone_wand_1] run function spellbound_weapons:other/tips/bone_wand_1
execute as @s[tag=spellbound_tip.bone_wand_1,tag=!spellbound_tip.bone_wand_2] run function spellbound_weapons:other/tips/bone_wand_2
execute as @s[tag=spellbound_tip.bone_wand_2,tag=!spellbound_tip.bone_wand_3] run function spellbound_weapons:other/tips/bone_wand_3
