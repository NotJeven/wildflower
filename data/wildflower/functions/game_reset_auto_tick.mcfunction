#	Description:
#		runs when the auto reset ticks (every game tick while a countdown is true)
#	Activator:
#		#gameState = #END if #resetCountdown < #30SECONDS
#	Parents:
#		wildflower:update


# do a tick of feedback (sound, text) every second
scoreboard players operation #gameResetSecond var = #resetCountdown var
scoreboard players operation #gameResetSecond var %= #1SECOND var
execute if score #gameResetSecond var = #0 var run function wildflower:game_reset_second

# decrease the counter
scoreboard players operation #resetCountdown var -= #1 var

