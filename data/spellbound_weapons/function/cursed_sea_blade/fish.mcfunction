
execute store result score @s spellbound_randomizer_output run random value 1..4


playsound minecraft:entity.witch.drink block @a[distance=..20] ~ ~ ~ 1 .9
execute if score @s spellbound_randomizer_output matches 1 run summon pufferfish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 2 run summon tropical_fish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 3 run summon salmon ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}
execute if score @s spellbound_randomizer_output matches 4 run summon cod ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}


summon pufferfish ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["spellbound_cursedfish"]}

kill @s

