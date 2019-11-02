#	Description:
#		starts the game
#	Activator:
#		if #gameState = #COUNTDOWN if #gameCountdown < #0 
#	Parents:
#		wildflower:update


tellraw @a {"translate":"wildflower.game.start"}
#playsound <sound> <source> @a [x] [y] [z] [volume] [pitch] [minimumVolume]
scoreboard players operation #gameState var = #RUNNING var
gamemode adventure @a[team=aqua]
gamemode adventure @a[team=purple]
spreadplayers 19.5 545.5 1 2 false @a[team=aqua]
spreadplayers -18.5 545.5 1 2 false @a[team=purple]
