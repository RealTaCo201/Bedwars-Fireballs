execute as @a[nbt={Inventory:[{"id":"minecraft:fire_charge"}]}] at @s run function fb:replacefirecharge

execute as @a at @s if score @s fireballuse matches 1.. run execute at @s if entity @s[nbt={SelectedItem:{tag:{CustomModelData:9251231}}}] run function fb:fireballused
execute as @a at @s if score @s fireballuse matches 1.. run execute at @s if entity @s[nbt={Inventory:[{tag:{CustomModelData:9251231},Slot:-106b}]}] unless entity @s[nbt={SelectedItem:{tag:{CustomModelData:9251231}}}] run function fb:fireballused

scoreboard players reset @a fireballuse

function fb:killoldfireballs