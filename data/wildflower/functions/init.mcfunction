#	Description:
#		Initializes all of the objectives, variables, teams, and game systems
# 		should only be run once
#	Parents:
#		wildflower:load

# objectives
# "scoreboard objectives add var dummy" defined in wildflower:load
scoreboard objectives add sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add deathCount deathCount "Deaths"

scoreboard objectives add triggerTeamJoin trigger
scoreboard objectives add triggerTeamReady trigger
scoreboard objectives add sidebarDisplay dummy "Wildflower"
scoreboard objectives setdisplay sidebar sidebarDisplay

# CONSTANTS
# game states
scoreboard players set #IDLE var 0
scoreboard players set #COUNTDOWN var 1
scoreboard players set #RUNNING var 2
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
scoreboard players set #30SECONDS var 600
scoreboard players set #10SECONDS var 200

# numbers
scoreboard players set #1 var 1
scoreboard players set #0 var 0
scoreboard players set #20 var 20
# END CONSTANTS

# things to be only defined once
scoreboard players operation #gameCountdownSecond var = #1 var
scoreboard players operation #menuHidden var = #FALSE var
scoreboard players set §nWolfsbane sidebarDisplay 5
scoreboard players set §nFoxglove sidebarDisplay 3
scoreboard players set §nSpectator sidebarDisplay 1


# teams
team add aqua "Wolfsbane"
team modify aqua color aqua
team modify aqua prefix "Wolfsbane."
team add purple "Foxglove"
team modify purple color light_purple
team modify purple prefix "Foxglove."
team add spectator "Spectator"
team modify spectator color gray
team modify spectator prefix "Spectator."

team add ready
team modify ready color green
team add notready
team modify notready color red

# initializes/sets all the variables
function wildflower:var_set