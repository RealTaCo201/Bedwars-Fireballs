clear @s fire_charge 1
scoreboard players add @s fireballamount 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:fire_charge"}]}] run function fb:countfirecharge