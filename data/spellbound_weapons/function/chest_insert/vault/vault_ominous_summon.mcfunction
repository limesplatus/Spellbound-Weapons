execute if predicate spellbound_weapons:chance/33_percent run summon marker ~ ~ ~ {Tags:["spellbound_marker_vault","spellbound_marker_vault_ominous","spellbound_temp2342"]}



execute as @n[distance=..0.0001,type=marker,tag=spellbound_marker_vault,tag=spellbound_temp2342] at @s run function spellbound_weapons:chest_insert/vault/vault_marker


tag @n[distance=..0.0001,type=marker,tag=spellbound_temp2342] remove spellbound_temp2342
