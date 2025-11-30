tag @s add spellbound_usedhammer


#hit (mob killed)
execute positioned ~ ~1.4 ~ positioned ^ ^ ^3 as @s[predicate=!spellbound_weapons:holding/enchant/fortune] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. unless entity @e[distance=0.01..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:16,velocity_multiplier2:8,knockback_radius:2.5,player_move:5}


#hit fortune 1 (mob killed)
execute positioned ~ ~1.4 ~ positioned ^ ^ ^3 as @s[predicate=spellbound_weapons:holding/enchant/fortune1] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. unless entity @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:19.00,velocity_multiplier2:9.5,knockback_radius:2.5,player_move:4}


#hit fortune 2 (mob killed)
execute positioned ~ ~1.4 ~ positioned ^ ^ ^3 as @s[predicate=spellbound_weapons:holding/enchant/fortune2] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. unless entity @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:22.00,velocity_multiplier2:11,knockback_radius:2.5,player_move:3}


#hit fortune 3 (mob killed)
execute positioned ~ ~1.4 ~ positioned ^ ^ ^3 as @s[predicate=spellbound_weapons:holding/enchant/fortune3] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. unless entity @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:25.00,velocity_multiplier2:12.5,knockback_radius:2.5,player_move:2}


######################

#hit
execute as @s[predicate=!spellbound_weapons:holding/enchant/fortune] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @e[distance=0.01..5,sort=nearest,limit=1,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:16,velocity_multiplier2:8,knockback_radius:2.5,player_move:5}


#hit fortune 1
execute as @s[predicate=spellbound_weapons:holding/enchant/fortune1] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:19.00,velocity_multiplier2:9.5,knockback_radius:2.5,player_move:4}


#hit fortune 2
execute as @s[predicate=spellbound_weapons:holding/enchant/fortune2] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:22.00,velocity_multiplier2:11,knockback_radius:2.5,player_move:3}


#hit fortune 3
execute as @s[predicate=spellbound_weapons:holding/enchant/fortune3] unless score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob \
\
{velocity_multiplier:25.00,velocity_multiplier2:12.5,knockback_radius:2.5,player_move:2}


######################




#crit
execute as @s[predicate=!spellbound_weapons:holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob_crit

#silk touch crit
execute as @s[predicate=spellbound_weapons:holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. as @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] at @s run function spellbound_weapons:mega_hammer/hit_mob_crit_silk_touch


#silk touch crit (mob killed)
execute as @s[predicate=spellbound_weapons:holding/enchant/silk_touch] if score @s spellbound_fallspeed matches ..-20 if score @s spellbound_hammer_cooldown matches 49.. unless entity @n[distance=0.01..5,type=!#spellbound_weapons:misc,nbt={HurtTime:10s}] positioned ~ ~1.4 ~ positioned ^ ^ ^3 run function spellbound_weapons:mega_hammer/hit_mob_crit_silk_touch

scoreboard players set @s spellbound_hammer_cooldown 0
playsound minecraft:entity.blaze.hurt player @a[distance=..20] ~ ~ ~ 1.5 .5

tag @s remove spellbound_usedhammer

scoreboard players set @s spellbound_hammer_cooldown 1
