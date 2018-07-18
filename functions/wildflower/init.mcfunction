#	Description:
#		Initializes all of the objectives, variables, teams, and game systems
# 		should only be run once
#	Parents:
#		wildflower:load

# objectives
# "scoreboard objectives add var dummy" defined in wildflower:load
scoreboard objectives add sinceDeath stat.timeSinceDeath
scoreboard objectives add triggerTeamJoinAqua trigger
scoreboard objectives add triggerTeamJoinPurple trigger


# constants
scoreboard players set #IDLE var 0			# game state
scoreboard players set #COUNTDOWN var 1		# game state
scoreboard players set #RUNNING	var 2		# game state
scoreboard players set #END var 3			# game state
scoreboard players set #READY var 1			# ready state
scoreboard players set #NOTREADY var 0		# ready state

scoreboard players set #TRUE var 1			# boolean
scoreboard players set #FALSE var 0			# boolean

scoreboard players set #15SECONDS var 300	# time
scoreboard players set #1SECOND var 20		# time

scoreboard players set #1 var 1				# numbers
scoreboard players set #0 var 0				# numbers

# teams
team add aqua Aqua
team option aqua color aqua
team option aqua prefix "Aqua."
team add purple Purple
team option purple color light_purple
team option purple prefix "Purple."

# initializes/sets all the variables
function wildflower:var_set