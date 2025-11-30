
#count how many mobs have been hit by this raycast for damage
scoreboard players add temp_mobs_hit spellbound_count 1

tag @s add spellbound_electric_hit

effect give @s glowing 6 0 false

#damage

    #damage if hit <=2 mobs
    execute if score temp_mobs_hit spellbound_count matches ..2 run damage @s 8 spellbound_weapons:magic by @p[tag=spellbound_electric_staff_immune]

    #damage if hit by >2 mobs
    execute if score temp_mobs_hit spellbound_count matches 3.. run damage @s 5 spellbound_weapons:magic by @p[tag=spellbound_electric_staff_immune]
