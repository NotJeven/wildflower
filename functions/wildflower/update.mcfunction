#	Description:
#		main game and logic loop
#	Activator:
#		none
#	Parents:
#		minecraft:tick


# deal with new players when they log in for the first time
execute if entity @a[tag=!initialized] run function wildflower:initialize_player

# death handlers
tag @a[score={sinceDeath=0},tag=!dead] add dead
execute if entity @a[score={sinceDeath=1..},tag=dead] run function wildflower:alive

# Menu Requests
execute if score #menuHidden var = #FALSE var run tag @a[x=0.5,y=47,z=520.5,distance=0..1,tag=!menuRequest] add menuRequest
tag @a[x=0.5,y=47,z=520.5,distance=0..1,tag=menuRequest] add menuTimeout
execute if entity @a[x=0.5,y=47,z=520.5,distance=0..1,tag=menuRequest,tag=!menuHidden] run function wildflower:menu
tag @a[x=0.5,y=47,z=520.5,distance=1..,tag=menuTimeout] remove menuTimeout

# Menu actions
execute if entity @a[score={triggerTeamJoinPurple=1}] run function wildflower:team_join_purple
execute if entity @a[score={triggerTeamJoinAqua=1}] run function wildflower:team_join_aqua
execute if entity @a[score={triggerTeamLeave=1}] run function wildflower:team_leave
execute if entity @a[score={triggerTeamReady=1},team=aqua] run function wildflower:team_ready_aqua
execute if entity @a[score={triggerTeamReady=1},team=purple] run function wildflower:team_ready_purple


# start/stop the game
execute if score #teamReadyAqua var = #READY var if score #teamReadyPurple var = #READY var if score #gameState = #IDLE var run function wildflower:game_countdown_start
execute if score #gameState var = #COUNTDOWN var if score #teamReadyPurple var = #NOTREADY var run function wildflower:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadyAqua var = #NOTREADY var run function wildflower:game_countdown_stop

execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #15SECONDS var run function wildflower:game_countdown_tick
execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #0 var run function wildflower:game_start
