
# why are you in water?????
execute if block ~ ~-.5 ~ water run playsound entity.zombie_villager.cure player @a[distance=..30] ~ ~ ~ 1.5 2
execute if block ~ ~-.5 ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~-.5 ~ water run playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 1.5 1.25
execute if block ~ ~-.5 ~ water run particle end_rod ~ ~1 ~ 0 0 0 .2 20 force
execute if block ~ ~-.5 ~ water run damage @s 6 minecraft:magic


particle wax_off ~ ~ ~ 0 0 0 15 5 force @a[distance=..128]

 playsound block.respawn_anchor.deplete player @a[distance=..32] ~ ~ ~ 1 1.75

execute positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_electricity","spellbound_marker"]}
execute positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_electricity","spellbound_marker"]}
execute positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["spellbound_electricity","spellbound_marker"]}

######################################################################

#durability mainhand
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3] run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking1] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking2] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff,predicate=spellbound_weapons:holding/enchant/unbreaking3] if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.mainhand spellbound_weapons:damage0.5


#durability offhand
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=!spellbound_weapons:holding/enchant/unbreaking1-3_offhand] run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking1_offhand] if predicate spellbound_weapons:chance/50_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking2_offhand] if predicate spellbound_weapons:chance/33_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5
execute as @s[predicate=spellbound_weapons:holding/weapon/electric_staff_offhand,predicate=spellbound_weapons:holding/enchant/unbreaking3_offhand] if predicate spellbound_weapons:chance/25_percent run item modify entity @s[gamemode=!creative] weapon.offhand spellbound_weapons:damage0.5

######################################################################


# bam
tag @s add spellbound_electric_staff_immune 

#mainhand
    execute if entity @s[predicate=!spellbound_weapons:holding/enchant/luck_of_the_sea,predicate=spellbound_weapons:holding/weapon/electric_staff] run scoreboard players set @s spellbound_enchantlevel 0

    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea1,predicate=spellbound_weapons:holding/weapon/electric_staff] run scoreboard players set @s spellbound_enchantlevel 1
    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea2,predicate=spellbound_weapons:holding/weapon/electric_staff] run scoreboard players set @s spellbound_enchantlevel 2
    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3,predicate=spellbound_weapons:holding/weapon/electric_staff] run scoreboard players set @s spellbound_enchantlevel 3
    
#offhand
    execute if entity @s[predicate=!spellbound_weapons:holding/enchant/luck_of_the_sea_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] run scoreboard players set @s spellbound_enchantlevel 0

    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea1_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] run scoreboard players set @s spellbound_enchantlevel 1
    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea2_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] run scoreboard players set @s spellbound_enchantlevel 2
    execute if entity @s[predicate=spellbound_weapons:holding/enchant/luck_of_the_sea3_offhand,predicate=spellbound_weapons:holding/weapon/electric_staff_offhand] run scoreboard players set @s spellbound_enchantlevel 3

### RAYCAST FUNCTION ###
execute positioned ^ ^ ^1 run function spellbound_weapons:electric_staff/raycast
scoreboard players reset temp spellbound_count
scoreboard players reset temp_mobs_hit spellbound_count

tag @s remove spellbound_electric_staff_immune
tag @e[distance=..128] remove spellbound_electric_hit

execute store result score @n[type=marker,tag=spellbound_electric_raycast] spellbound_uuid run scoreboard players get @s spellbound_uuid
execute store result score @n[type=marker,tag=spellbound_electric_raycast] spellbound_uuid2 run scoreboard players get @s spellbound_uuid2
execute store result score @n[type=marker,tag=spellbound_electric_raycast] spellbound_uuid3 run scoreboard players get @s spellbound_uuid3
execute store result score @n[type=marker,tag=spellbound_electric_raycast] spellbound_uuid4 run scoreboard players get @s spellbound_uuid4



data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] Rotation set from entity @s Rotation
data modify entity @e[limit=1,sort=nearest,tag=spellbound_electric_raycast] data.Owner set from entity @s UUID

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run particle minecraft:block{block_state:"yellow_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:64}}]}] run item replace entity @s weapon.mainhand with air

# break
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run particle minecraft:block{block_state:"yellow_concrete ~ ~1 ~ .4 .3 .4 .4 30 normal
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 0.9
#execute as @s[scores={spellbound_e_staff_cooldown=..60},nbt={Inventory:[{id:"minecraft:fishing_rod",count:1,tag:{SpellboundElectricStaff:1,Damage:63}}]}] run item replace entity @s weapon.mainhand with air



execute unless predicate spellbound_weapons:holding/spellbound_sword run function spellbound_weapons:other/action/set_cooldowns_to_0