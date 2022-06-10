execute as @s rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["aim"]}
summon minecraft:fireball ~ ~1 ~ {Tags:["fireball"],ExplosionPower:10,power:[0]}
execute at @s positioned ~ ~1 ~ as @e[distance=..1,type=fireball,tag=fireball] positioned 0 0 0 store result score @s fbmotionx run data get entity @e[tag=aim,limit=1] Pos[0] 1000
execute at @s positioned ~ ~1 ~ as @e[distance=..1,type=fireball,tag=fireball] positioned 0 0 0 store result score @s fbmotiony run data get entity @e[tag=aim,limit=1] Pos[1] 1000
execute at @s positioned ~ ~1 ~ as @e[distance=..1,type=fireball,tag=fireball] positioned 0 0 0 store result score @s fbmotionz run data get entity @e[tag=aim,limit=1] Pos[2] 1000
kill @e[tag=aim]

execute as @e[type=fireball,tag=fireball] store result entity @s Motion[0] double 0.004 run scoreboard players get @s fbmotionx
execute as @e[type=fireball,tag=fireball] store result entity @s Motion[1] double 0.004 run scoreboard players get @s fbmotiony
execute as @e[type=fireball,tag=fireball] store result entity @s Motion[2] double 0.004 run scoreboard players get @s fbmotionz

scoreboard players reset @s fireballuse
execute as @s[gamemode=!creative] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9251231}}}] run item replace entity @s weapon.mainhand with air
execute as @s[gamemode=!creative] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:9251231}}]}] run item replace entity @s weapon.mainhand with air