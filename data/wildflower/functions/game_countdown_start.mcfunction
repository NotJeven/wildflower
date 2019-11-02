#	Description:
#		starts the countdown sequence to start the game
#	Activator:
#		if #gameState = #IDLE if #teamReadyPurple = #READY if #teamReadyAqua = #READY
#	Parents:
#		wildflower:update

tellraw @a {"translate":"wildflower.game.start.countdown"}
#playsound <sound> <source> <player> [x] [y] [z] [volume] [pitch] [minimumVolume]

scoreboard players operation #gameState var = #COUNTDOWN var

scoreboard players operation #gameCountdown var = #15SECONDS var
scoreboard players operation #gameCountdown var -= #1 var