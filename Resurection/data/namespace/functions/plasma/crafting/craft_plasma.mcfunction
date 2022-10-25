clear @s minecraft:knowledge_book
give @s fire_charge{display:{Name:'{"text":"Plasma Charge","color":"dark_purple","italic":true}'},HideFlags:1,Plasma:1b,Enchantments:[{}]} 1


# Reset
recipe take @s namespace:plasma
advancement revoke @s only namespace:plasma_adv