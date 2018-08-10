#	Description:
#		resets the map and transitions game to IDLE gamestate
#	Activator:
#		None
#	Parents:
#		

kill @e[type=arrow]
kill @e[type=item]
function wildflower:var_set
execute if score #menuHidden var = #FALSE var run tag @a add menuRequest
team leave @a[team=!spectator]
gamemode spectator @a[gamemode=!spectator]
# var set also sets gamestate to idle
function wildflower:var_set



