

scoreboard players add @s spellbound_count 1


execute if predicate spellbound_weapons:chance/4_percent run tp @s ~ ~ ~ 90 ~
execute if predicate spellbound_weapons:chance/4_percent run tp @s ~ ~ ~ -90 ~
execute if predicate spellbound_weapons:chance/4_percent run tp @s ~ ~ ~ 180 ~
execute if predicate spellbound_weapons:chance/4_percent run tp @s ~ ~ ~ -180 ~


execute if predicate spellbound_weapons:chance/4_percent at @s run tp @s ~ ~ ~ ~ 90
execute if predicate spellbound_weapons:chance/4_percent at @s run tp @s ~ ~ ~ ~ 0
execute if predicate spellbound_weapons:chance/4_percent at @s run tp @s ~ ~ ~ ~ -90




execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #spellbound_weapons:permeable run tp @s ^ ^ ^.2
execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #spellbound_weapons:permeable run tp @s ^ ^ ^.2


execute unless block ~ ~ ~ #spellbound_weapons:permeable run tp @s ~ ~.2 ~


execute if score @s spellbound_count matches 10.. if predicate spellbound_weapons:chance/10_percent run kill @s