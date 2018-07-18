#	Description:
#		stops the game start countdown sequence
#	Activator:
#		if #gameState = #COUNTDOWN if #teamReadyAqua = #NOTREADY
#		if #gameState = #COUNTDOWN if #teamReadyPurple = #NOTREADY
#	Parents:
#		wildflower:update

scoreboard players operation #gameState var = #IDLE var 
scoreboard players operation #gameCountdown var = #15SECONDS var