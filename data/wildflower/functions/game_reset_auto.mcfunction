#	Description:
#		times for an auto reset
#	Activator:
#		if #gameState = #END
#	Parents:
#		wildflower:update

tellraw @a {"translate":"wildflower.game.reset.auto"}

scoreboard players operation #resetCountdown var = #30SECONDS var
scoreboard players operation #resetCountdown var -= #1 var