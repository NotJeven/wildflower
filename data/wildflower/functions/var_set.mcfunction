#	Description:
#		Initializes all of the variables by setting them to 0
#	Activator:
#		None
#	Parents:
#		wildflower:init

scoreboard players operation #teamReadyAqua var = #NOTREADY var 
scoreboard players operation #teamReadyPurple var = #NOTREADY var
scoreboard players operation #teamReadySpectator var = #READY var
scoreboard players operation #gameState var = #IDLE var
scoreboard players operation #gameCountdown var = #15SECONDS var
scoreboard players operation #resetCountdown var = #35SECONDS var
scoreboard players operation #livesAqua var = #20 var
scoreboard players operation #livesPurple var = #20 var
