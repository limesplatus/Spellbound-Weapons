scoreboard players add @s spellbound_count 1

particle wax_on ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
particle large_smoke ~ ~ ~ 0 0 0 .05 5 force @a[distance=..64]

playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..45] ~ ~ ~ 3 2
playsound minecraft:entity.firework_rocket.large_blast player @a[distance=..30] ~ ~ ~ 3 1.25
particle flash ~ ~ ~ 0 0 0 .1 2 force @a[distance=..64]
particle end_rod ~ ~ ~ 0 0 0 .5 5 force @a[distance=..64]

function spellbound_weapons:electric_staff/summon_electirc

#as hit mob
execute as @e[distance=..2,dy=0,type=!#spellbound_weapons:misc,tag=!spellbound_electric_staff_immune,predicate=!spellbound_weapons:not_creative_spec,sort=nearest] run function spellbound_weapons:electric_staff/hit_mob



 playsound block.respawn_anchor.deplete player @a[distance=..32,tag=!spellbound_electric_staff_immune] ~ ~ ~ 1 1.75