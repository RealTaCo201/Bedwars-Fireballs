forceload remove 0 0

scoreboard objectives remove fireballamount
scoreboard objectives remove fireballuse
scoreboard objectives remove fbmotionx
scoreboard objectives remove fbmotiony
scoreboard objectives remove fbmotionz

tellraw @a [{"text":"Bedwars Fireballs sucessfully uninstalled. It is now safe to remove the datapack.","color": "green"}]

datapack disable "file/Bedwars Fireballs"