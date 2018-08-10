#	Description:
#		main game and logic loop
#	Activator:
#		none
#	Parents:
#		minecraft:tick


# deal with new players when they log in for the first time
execute if entity @a[tag=!initialized] run function wildflower:initialize_player

# death handlers
tag @a[scores={sinceDeath=0},tag=!dead] add dead
execute if entity @a[scores={sinceDeath=1..},tag=dead] run function wildflower:alive


# Menu Requests

tag @a[x=0.5,y=47,z=520.5,distance=0..1,tag=!menuRequest] add menuRequest
execute if entity @a[x=0.5,y=47,z=520.5,distance=0..1,tag=menuRequest,tag=!menuTimeout] if score #menuHidden var = #FALSE var run function wildflower:menu
execute if entity @a[x=0.5,y=47,z=520.5,distance=0..1,tag=menuRequest,tag=menuAdmin,tag=!menuTimeout] if score #menuHidden var = #TRUE var run function wildflower:menu_admin
tag @a[x=0.5,y=47,z=520.5,distance=0..1,tag=menuRequest] add menuTimeout
tag @a[x=0.5,y=47,z=520.5,distance=1..,tag=menuTimeout] remove menuTimeout

# Menu actions
execute if entity @a[scores={triggerTeamJoin=-1}] run function wildflower:team_leave
execute if entity @a[scores={triggerTeamJoin=1}] run function wildflower:team_join_purple
execute if entity @a[scores={triggerTeamJoin=2}] run function wildflower:team_join_aqua
execute if entity @a[scores={triggerTeamJoin=3}] run function wildflower:team_join_spectator
execute if entity @a[scores={triggerTeamReady=1},team=aqua] run function wildflower:team_ready_aqua
execute if entity @a[scores={triggerTeamReady=1},team=purple] run function wildflower:team_ready_purple
execute if entity @a[scores={triggerTeamReady=1},team=spectator] run function wildflower:team_ready_spectator


# start/stop the game
execute if score #teamReadyAqua var = #READY var if score #teamReadyPurple var = #READY var if score #teamReadySpectator var = #READY var if score #gameState var = #IDLE var run function wildflower:game_countdown_start
execute if score #gameState var = #COUNTDOWN var if score #teamReadyPurple var = #NOTREADY var run function wildflower:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadyAqua var = #NOTREADY var run function wildflower:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadySpectator var = #NOTREADY var run function wildflower:game_countdown_stop

execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #15SECONDS var run function wildflower:game_countdown_tick
execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #0 var run function wildflower:game_start

# game win condition
execute if score #livesPurple var = #0 var run function wildflower:game_end
execute if score #livesAqua var = #0 var run function wildflower:game_end

# auto reset 
execute if score #gameState var = #END var if score #resetCountdown var > #30SECONDS var run scoreboard players operation #resetCountdown var -= #1 var
execute if score #gameState var = #END var if score #resetCountdown var = #30SECONDS var run function wildflower:game_reset_auto
execute if score #gameState var = #END var if score #resetCountdown var < #30SECONDS var run function wildflower:game_reset_auto_tick
execute if score #gameState var = #END var if score #resetCountdown var < #0 var run function wildflower:game_reset