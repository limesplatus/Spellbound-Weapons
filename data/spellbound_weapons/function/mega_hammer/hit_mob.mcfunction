particle minecraft:poof ~ ~.5 ~ .3 .3 .3 .2 30 force @a[distance=..64]
playsound minecraft:block.anvil.land player @a[distance=..30] ~ ~ ~ .75 .75
playsound minecraft:block.netherite_block.break player @a[distance=..30] ~ ~ ~ 2 .5

$execute as @s[type=!player] run function spellbound_weapons:mega_hammer/move {velocity_multiplier:"$(velocity_multiplier)"}

#nearby mobs
$execute as @s[type=!player] as @e[distance=0.01..$(knockback_radius),type=!#spellbound_weapons:misc,type=!player] at @s run function spellbound_weapons:mega_hammer/move {velocity_multiplier:"$(velocity_multiplier2)"}

$execute as @e[distance=0.01..$(knockback_radius),type=!#spellbound_weapons:misc,type=!player] at @s run damage @s[tag=!spellbound_usedhammer] 4 spellbound_weapons:melee_force by @p[tag=spellbound_usedhammer]

#$ say $(velocity_multiplier)
#$ say $(velocity_multiplier2)

damage @s[tag=!spellbound_usedhammer] 2 spellbound_weapons:melee_force by @p[tag=spellbound_usedhammer]


$execute as @s[type=player,tag=!spellbound_usedhammer] run scoreboard players set @s spellbound_hammer_move $(player_move)
execute as @s[type=player,tag=!spellbound_usedhammer] at @p[scores={spellbound_hammer=1..},tag=spellbound_usedhammer] run function spellbound_weapons:mega_hammer/player_move_vector
execute as @s[type=player,tag=!spellbound_usedhammer] run function spellbound_weapons:mega_hammer/player_move