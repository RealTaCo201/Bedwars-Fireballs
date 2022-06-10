give @s minecraft:carrot_on_a_stick{CustomModelData:9251231,display:{Name:'{"text":"Fireball","italic":false}',"Lore":['[{"text": "Right click to use!"}]']}} 1
scoreboard players remove @s fireballamount 1
execute if score @s fireballamount matches 1.. run function fb:givefireball