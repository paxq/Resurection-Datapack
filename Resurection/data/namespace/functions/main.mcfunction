##########
# Blocks #
##########

#Crafting Table
execute as @e[tag=crafting] at @s run function namespace:custom_blocks/custom_crafting_table/custom_recipes
execute as @e[type=item_frame,tag=crafting,tag=!placed] at @s run function namespace:custom_blocks/custom_crafting_table/place
execute as @e[type=item_frame,tag=crafting,tag=placed] at @s unless block ~ ~ ~ minecraft:dropper run function namespace:custom_blocks/custom_crafting_table/remove

#Forging Table
execute as @e[tag=forge] at @s run function namespace:custom_blocks/forge/forging_recipes
execute as @e[type=item_frame,tag=forge,tag=!placed] at @s run function namespace:custom_blocks/forge/place
execute as @e[type=item_frame,tag=forge,tag=placed] at @s unless block ~ ~ ~ minecraft:dispenser run function namespace:custom_blocks/forge/remove

###########
# Weapons #
###########

#LightningBow
#function namespace:plasma/lightning_bow_abilities
#Totem of Resistence
function namespace:undying/crafting/floor_craft_undying
function namespace:undying/abilities

#Plasma plasmaWand
function namespace:plasma/plasma_wand_abilities