#	Description:
#		Initializes all of the objectives, variables, teams, and game systems
# 		should only be run once
#	Parents:
#		wildflower:load

# objectives
# "scoreboard objectives add var dummy" defined in wildflower:load
scoreboard objectives add sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add triggerTeamJoinAqua trigger
scoreboard objectives add triggerTeamJoinPurple trigger
scoreboard objectives add triggerTeamReady trigger
scoreboard objectives add triggerTeamLeave trigger

# constants
# game states
scoreboard players set #IDLE var 0
scoreboard players set #COUNTDOWN var 1
scoreboard players set #RUNNING	var 2
scoreboard players set #END var 3

# ready states
scoreboard players set #READY var 1	
scoreboard players set #NOTREADY var 0
# ready transition states
scoreboard players set #TURNREADY var 11
scoreboard players set #TURNNOTREADY var 10

# booleans
scoreboard players set #TRUE var 1
scoreboard players set #FALSE var 0

# time
scoreboard players set #15SECONDS var 300
scoreboard players set #1SECOND var 20

# numbers
scoreboard players set #1 var 1
scoreboard players set #0 var 0

# teams
team add aqua "Aqua"
team modify aqua color aqua
team modify aqua prefix "Aqua."
team add purple "Purple"
team modify purple color light_purple
team modify purple prefix "Purple."

# initializes/sets all the variables
function wildflower:var_set