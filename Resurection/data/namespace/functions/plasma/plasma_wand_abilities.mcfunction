scoreboard objectives add plasmaWand minecraft.used:minecraft.trident

execute as @a[scores={plasmaWand=1..}] at @s run tag @e[type=trident,sort=nearest,limit=1] add plasmaWand
execute as @e[tag=plasmaWand,tag=!stop,nbt={inGround:1b}] at @s run summon minecraft:lightning_bolt
execute as @e[tag=plasmaWand,tag=!stop,nbt={inGround:1b}] at @s run summon minecraft:lightning_bolt
execute as @e[tag=plasmaWand,tag=!stop,nbt={inGround:1b}] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:4,Fuse:0}
execute as @e[tag=plasmaWand,tag=!stop,nbt={inGround:1b}] at @s run particle minecraft:dragon_breath ~ ~ ~ 2 2 2 0 100
execute as @e[tag=plasmaWand,nbt={inGround:1b}] at @s run tag @s add stop
#execute as @e[tag=plasmaWand,tag=!stop,nbt={inGround:1b}] at @s run kill @s

## Reset
scoreboard players remove @a[scores={plasmaWand=1..}] plasmaWand 1