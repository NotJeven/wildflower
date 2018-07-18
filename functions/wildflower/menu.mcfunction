#	Description:
#		Deals a lobby menu
#	Activator:
#		@a[tag=menuRequest]
#	Parents:
#		wildflower:update

# flavour
tellraw @a[tag=menuRequest] [{"translate":"menu","color":"light_purple"}]
# enable triggers
scoreboard players enable @a[tag=menuRequest] triggerTeamJoinAqua
scoreboard players enable @a[tag=menuRequest] triggerTeamReadyAqua
scoreboard players enable @a[tag=menuRequest] triggerTeamReadyPurple
scoreboard players enable @a[tag=menuRequest] triggerTeamJoinPurple

# reset
tag @a[tag=menuRequest] remove menuRequest