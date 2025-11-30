summon item ~ ~ ~ {Item:{id:"minecraft:diamond_sword",count:1,components:{custom_model_data:{floats:[47042]},enchantment_glint_override:true,"damage_resistant": {"types": "#is_fire"},custom_data:{SpellboundItem:1b,SpellboundCrucible:1b,CrucibleDye:1b},item_name:{"translate":"Crucible","color":"#EB3868","italic":false},lore:[ [{"translate":"Color: Red","color":"gray","italic":false}],[ {"translate":"Grindstone Repair: ","color":"gray","italic": false}],[{"translate":"  ","color":"gray","italic": false},{"color":"blue","italic": false,"translate":"item.minecraft.diamond_sword"}],{"translate":"Spellbound Weapons","color":"#676e75","italic": true}]}},PickupDelay:30,Tags:["spellbound_itemaligned"],NoGravity:1b}

particle end_rod ~ ~.15 ~ 0 0 0 .3 50 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .6 50 force @a[distance=..128]
particle end_rod ~ ~.15 ~ 0 0 0 .9 50 force @a[distance=..128]

particle minecraft:wax_off ~ ~ ~ .3 .3 .3 20 16 force @a[distance=..64]

particle flash{color:[1,1,1,1]} ~ ~.12 ~ 0 0 0 .2 10 force @a[distance=..64]

playsound minecraft:item.trident.thunder block @a[distance=..128] ~ ~ ~ 6 .9
playsound minecraft:block.beacon.activate block @a[distance=..128] ~ ~ ~ 6 1.5
playsound minecraft:block.conduit.attack.target block @a[distance=..128] ~ ~ ~ 6 .5

function spellbound_weapons:other/item_merging/merged_common

kill @n[type=item,nbt={Item:{id:"minecraft:redstone_block"}}]
kill @n[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}]
kill @n[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}]



kill @s