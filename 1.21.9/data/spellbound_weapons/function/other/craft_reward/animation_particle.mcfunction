scoreboard players set temp spellbound_count 100


particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 5 force @a[distance=..32]
particle poof ~ ~.2 ~ 0 0 0 .15 6 force @a[distance=..64]
particle poof ~ ~.2 ~ 0 0 0 .05 6 force @a[distance=..64]

playsound block.respawn_anchor.set_spawn block @a[distance=..64] ~ ~ ~ .7 1.2


execute if entity @s[advancements={spellbound_weapons:crafted/windsweeper=true}] run function spellbound_weapons:other/craft_reward/windsweeper

execute if entity @s[advancements={spellbound_weapons:crafted/moonlight_edge=true}] run function spellbound_weapons:other/craft_reward/moonlight_edge

execute if entity @s[advancements={spellbound_weapons:crafted/magmus_charger=true}] run function spellbound_weapons:other/craft_reward/magmus_charger

execute if entity @s[advancements={spellbound_weapons:crafted/thorn_blossom_diamond=true}] run function spellbound_weapons:other/craft_reward/thorn_blossom_diamond
