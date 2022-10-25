#########################
#  Floor crafting Relic #
#########################

# finds crafting items and summons crafting result
execute as @e[type=item,nbt={Item:{id:"minecraft:sculk_shrieker",tag:{display:{Name:'{"text":"Shrieker"}',Lore:['{"text":"The one ingredient to an item of complete power."}']}},Count:1b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s as @e[type=item,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Immunity Relic","color":"gold","italic":true}',Lore:['{"text":"Only 10 uses before breaking."}']},CustomModelData:382467,relic:1b,Enchantments:[{}]}}}
# kills the crafting items
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}},distance=0..1,limit=1,sort=nearest]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}},distance=0..1,limit=1,sort=nearest]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:sculk_shrieker",Count:1b}},distance=0..1,limit=1,sort=nearest]
execute as @e[tag=fresh_craft] at @s run particle minecraft:sneeze
execute as @e[tag=fresh_craft] at @s run playsound minecraft:item.totem.use master @p
execute as @e[tag=fresh_craft] at @s run particle minecraft:flame ~ ~ ~ 1 1 1 1 2
execute as @e[tag=fresh_craft] at @s run tag @s remove fresh_craft