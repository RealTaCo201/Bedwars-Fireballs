execute as @e[type=fireball,tag=fireball] at @s if entity @e[type=marker,tag=fireballdistance,distance=..0.05] run kill @s
kill @e[type=marker,tag=fireballdistance]
execute at @e[type=fireball,tag=fireball] run summon marker ~ ~ ~ {Tags:["fireballdistance"]}