#	Description:
#		Deals a lobby menu
#	Activator:
#		@a[tag=menuRequest]
#	Parents:
#		wildflower:update
#		wildflower:team_join_purple, wildflower:team_join_aqua, wildflower:team_leave, wildflower:team_join_spectator,
#		wildflower:team_ready_aqua, wildflower:team_ready_purple
#		wildflower:initialize_player

# flavour
tellraw @a[tag=menuRequest,team=] [{"text":"[Team Options] "},{"text":"Wolfsbane","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 2"},"hoverEvent":{"action":"show_text","value":"Join Wolfsbane!"}},{"text":" | "},{"text":"Foxglove","color":"light_purple","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 1"},"hoverEvent":{"action":"show_text","value":"Join Foxglove!"}},{"text":" | "},{"text":"Spectate","color":"gray","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 3"},"hoverEvent":{"action":"show_text","value":"Hide from the game."}}]
tellraw @a[tag=menuRequest,team=!] [{"text":"[Team Options] "},{"text":"Toggle Ready","color":"green","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamReady set 1"},"hoverEvent":{"action":"show_text","value":"Toggle if team is ready!"}},{"text":" | "},{"text":"Leave Team","color":"gray","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set -1"},"hoverEvent":{"action":"show_text","value":"Abandon your team!"}}]
tellraw @a[tag=menuRequest] {"text":""}

# enable triggers
scoreboard players enable @a[tag=menuRequest] triggerTeamJoin
scoreboard players enable @a[tag=menuRequest,team=!] triggerTeamReady
#playsound @a[tag=menuRequest,tag=!menuAdmin]

function wildflower:menu_admin
# reset
tag @a[tag=menuRequest] remove menuRequest