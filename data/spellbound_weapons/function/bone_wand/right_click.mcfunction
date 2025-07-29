
execute if block ~ ~ ~ #spellbound_weapons:bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #spellbound_weapons:bone_wand_replaceable run fill ~ ~ ~ ~ ~ ~ bone_block
particle cloud ~ ~ ~ .6 .6 .6 .02 10 normal
playsound block.bone_block.place block @a[distance=..32] ~ ~ ~ 1 .8



summon minecraft:marker ~ ~ ~ {Tags:["spellbound_bone_wand_area","","spellbound_marker"]}



#### MAINHAND

    # level 1 enchant
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/bone_enchant1] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 1

    # level 2 enchant
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/bone_enchant2] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 2

    # level 3 enchant
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/bone_enchant3] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 3

#### OFFHAND
    # if both mainhand and offhand, only mainhand is counted

    # level 1 enchant
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/bone_enchant1_offhand] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 1

    # level 2 enchant
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/bone_enchant2_offhand] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 2

    # level 3 enchant
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/bone_enchant3_offhand] run scoreboard players set @n[type=marker,tag=spellbound_bone_wand_area] spellbound_enchantlevel 3



# store UUID's
execute store result score @n[distance=..1.5,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid run data get entity @s UUID[0]
execute store result score @n[distance=..1.5,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid2 run data get entity @s UUID[1]
execute store result score @n[distance=..1.5,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid3 run data get entity @s UUID[2]
execute store result score @n[distance=..1.5,type=marker,tag=spellbound_bone_wand_area] spellbound_uuid4 run data get entity @s UUID[3]

#########################################################################################################

# right click durability
execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

    # unbreaking 1
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/unbreaking1] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/66_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

    # unbreaking 2
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5

    # unbreaking 3
    execute as @s[predicate=spellbound_weapons:holding/weapon/bone_wand,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5




#offhand durability
execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3_offhand] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5

    # unbreaking 1
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking1_offhand] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/66_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5

    # unbreaking 2
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking2_offhand] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5

    # unbreaking 3
    execute as @s[predicate=!spellbound_weapons:holding/weapon/bone_wand_both,predicate=spellbound_weapons:holding/weapon/bone_wand_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking3_offhand] if predicate spellbound_weapons:chance/33_percent if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5


tag @s add spellbound_tip.bone_wand_1