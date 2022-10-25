scoreboard objectives add abilities minecraft.used:minecraft.carrot_on_a_stick

execute as @a[scores={abilities=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{relic:1b}}}] at @s run effect give @s minecraft:resistance 10 255 false
execute as @a[scores={abilities=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{relic:1b}}}] at @s run effect give @s minecraft:regeneration 20 3 false
execute as @a[scores={abilities=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{relic:1b}}}] at @s run execute if score @s useCount matches 10.. as @s run clear @s minecraft:carrot_on_a_stick{relic:1b} 1
execute as @a[scores={abilities=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{relic:1b}}}] at @s run execute if score @p useCount matches 10.. as @s run playsound minecraft:item.totem.use master @p
execute as @a[scores={abilities=1..}] at @s run execute if score @p useCount matches 10.. as @s run scoreboard players set @s useCount 0
# reset
scoreboard players remove @a[scores={abilities=1..}] abilities 1