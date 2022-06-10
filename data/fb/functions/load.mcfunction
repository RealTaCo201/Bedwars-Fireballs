forceload add 0 0

scoreboard objectives add fireballamount dummy
scoreboard objectives add fireballuse minecraft.used:carrot_on_a_stick
scoreboard objectives add fbmotionx dummy
scoreboard objectives add fbmotiony dummy
scoreboard objectives add fbmotionz dummy

tellraw @a [{"text":"Bedwars Fireballs sucessfully loaded!","color": "blue"}]