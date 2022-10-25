# Drops
summon item ~ ~0.5 ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Forge"}'},CustomModelData:222222,EntityTag:{Tags:["forge"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:222222}},Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}}}
# Kill Block Drops
kill @e[type=item,nbt={Item:{id:"minecraft:dispenser"}},distance=0..2,sort=nearest,limit=1]
# Kill Item Frame
kill @s