#	Description:
#		Initializes all of the variables by setting them to 0
#	Activator:
#		None
#	Parents:
#		wildflower:init
#		wildflower:game_reset

scoreboard players operation #teamReadyAqua var = #NOTREADY var 
scoreboard players operation #teamReadyPurple var = #NOTREADY var
scoreboard players operation #teamReadySpectator var = #READY var
scoreboard players operation #gameState var = #IDLE var
scoreboard players operation #gameCountdown var = #15SECONDS var
scoreboard players operation #resetCountdown var = #15SECONDS var
scoreboard players operation #livesAqua var = #20 var
scoreboard players operation #livesPurple var = #20 var

scoreboard players reset * deathCount
scoreboard players reset * sidebarDisplay

team join ready §nSpectator
team join notready §nWolfsbane
team join notready §nFoxglove
scoreboard players set §nSpectator sidebarDisplay 1
scoreboard players set §nFoxglove sidebarDisplay 3
scoreboard players set §nWolfsbane sidebarDisplay 5