# Clear Book
clear @s minecraft:knowledge_book

# Give Item
give @s item_frame{display:{Name:'{"text":"Crafting"}'},CustomModelData:111111,EntityTag:{Tags:["crafting"],Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:111111}},Invulnerable:1b,Invisible:1b,Fixed:1b,Silent:1b}}

# Reset
recipe take @s namespace:crafting_table_recipe
advancement revoke @s only namespace:crafting_table_craft_adv