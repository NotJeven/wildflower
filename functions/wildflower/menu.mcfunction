#	Description:
#		Deals a lobby menu
#	Activator:
#		@a[tag=menuRequest]
#	Parents:
#		wildflower:update, 
#		wildflower:team_join_purple, wildflower:team_join_aqua, wildflower:team_leave, wildflower:team_join_spectator,
#		wildflower:team_ready_aqua, wildflower:team_ready_purple
#		wildflower:initialize_player

# flavour
tellraw @a[tag=menuRequest] [{"translate":"menu","color":"light_purple"}]
# enable triggers
scoreboard players enable @a[tag=menuRequest,team=!] triggerTeamJoin
scoreboard players enable @a[tag=menuRequest] triggerTeamReady


# reset
tag @a[tag=menuRequest] remove menuRequest