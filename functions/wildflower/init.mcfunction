#	Description:
#		Initializes all of the objectives, variables, teams, and game systems
# 		should only be run once
#	Parents:
#		wildflower:load

# objective 
# var dummy defined in wildflower:load
scoreboard objectives add sinceDeath stat.timeSinceDeath


# teams
team add aqua Aqua
team option aqua color aqua
team option aqua prefix "Aqua."
team add purple Purple
team option purple color light_purple
team option purple prefix "Purple."

# initializes/sets all the variables
function wildflower:var_set