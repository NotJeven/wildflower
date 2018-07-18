#	Description:
#		Deals a lobby menu
#	Activator:
#		@a[tag=menuRequest]
#	Parents:
#		wildflower:update

# flavour
tellraw @a[tag=menuRequest] [{"translate":"menu","color":"light_purple"}]
# enable triggers
scoreboard players enable @a[tag=menuRequest,team=!] triggerTeamJoin
scoreboard players enable @a[tag=menuRequest] triggerTeamReady


# reset
tag @a[tag=menuRequest] remove menuRequest