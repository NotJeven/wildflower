#	Description:
#		ends the game and transitions map into post game state
#	Activator:
#		if #livesPurple = #0 if #livesAqua = #0
#	Parents:
#		wildflower:update

execute if score #livesPurple var = #0 var run tellraw @a {"translate":"wildflower.game.end.aqua"}
execute if score #livesAqua var = #0 var run tellraw @a {"translate":"wildflower.game.end.purple"}

playsound <sound> <source> @a [x] [y] [z] [volume] [pitch] [minimumVolume]

tag @a[tag=menuAdmin] add menuRequest
function widlfower:menu_admin

clear @a[gamemode=!spectator]
gamemode spectator @a[gamemode=!spectator]

scoreboard players operation #gameState var = #END var
