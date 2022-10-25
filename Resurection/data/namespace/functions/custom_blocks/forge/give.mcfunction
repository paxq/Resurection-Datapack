# Clear Book
clear @s minecraft:knowledge_book

# Give Item
give @s item_frame{display:{Name:'{"text":"Forge"}'},CustomModelData:222222,EntityTag:{Tags:["forge"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:222222}},Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}

# Reset
recipe take @s namespace:forge_craft_recipe
advancement revoke @s only namespace:forge_craft_adv