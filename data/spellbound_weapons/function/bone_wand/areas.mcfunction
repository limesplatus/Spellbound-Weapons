


scoreboard players add @s spellbound_count 1


### if someone tries being sneaky and taking the bone block
execute if entity @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..2] run scoreboard players set @s spellbound_count 120
execute if entity @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..2] run kill @e[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


## break (no lure) - 3 seconds
execute if entity @s[scores={spellbound_count=60..}] unless score @s spellbound_enchantlevel matches 1.. run function spellbound_weapons:bone_wand/bone_block_break

## break (lure I) - 4 seconds
execute as @s[scores={spellbound_count=80..,spellbound_enchantlevel=1}] run function spellbound_weapons:bone_wand/bone_block_break

## break (lure II) - 5 seconds
execute as @s[scores={spellbound_count=100..,spellbound_enchantlevel=2}] run function spellbound_weapons:bone_wand/bone_block_break

## break (lure III) - 6 seconds
execute as @s[scores={spellbound_count=120..,spellbound_enchantlevel=3..}] run function spellbound_weapons:bone_wand/bone_block_break


### huh there's no bone block
execute unless block ~ ~ ~ bone_block run scoreboard players set @s spellbound_count 120
execute unless block ~ ~ ~ bone_block run kill @n[type=item,nbt={Item:{id:"minecraft:bone_block"}},distance=..3,limit=1]


execute unless block ~ ~ ~ bone_block run function spellbound_weapons:bone_wand/bone_block_break
