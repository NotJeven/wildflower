#	Description
#		Initializes a player when they do not have a data file (scoreboard, etc)
#	Activator:
#		@a[tag=!initialized]
#	Parents:
#		wildflower:update

# actual function things
gamemode spectator @a[tag=!initialized]
effect give @a[tag=!initialized] minecraft:night_vision 99999 0 true

# colourful things
tellraw @a[tag=!initialized] [{"text":"Map: ","color":"white"},{"text":"Wildflower","color":"green"}]
tellraw @a[tag=!initialized] [{"text":"Author: ","color":"white"},{"text":"Jeven, Moesh, Rixot","color":"green"}]
tellraw @a[tag=!initialized] [{"text":"Version: ","color":"white"},{"text":"v0.1","color":"green"}]
title @a[tag=!initialized] subtitle [{"text":"Wildflower by Jeven","color":"green"}]
title @a[tag=!initialized] title ""
playsound minecraft:block.wooden_trapdoor.open master @a[tag=!initialized] ~ ~ ~ 2 1 1

# set the player as inititialized 
tag @a[tag=!initialized] add initialized