#	Description:
#		team leave handler
#	Activator:
#		@a[score={triggerTeamLeave=1}]
#	Parents:
#		wildflower:update



team leave @a[score={triggerTeamLeave=1}]

#items 
clear @a[score={triggerTeamLeave=1}]

# flavour
tellraw @a[score={triggerTeamLeave=1}] [{"text":"Left team."}]
title @a[score={triggerTeamLeave=1}] subtitle [{"text":"Left team."}]
title @a[score={triggerTeamLeave=1}] title ""
playsound <sound> <source> @a[score={triggerTeamLeave=1}] [x] [y] [z] [volume] [pitch] [minimumVolume]

# menu
execute if score #menuHidden var = #FALSE var run tag @a[score={triggerTeamLeave=1}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[score={triggerTeamLeave=1}] triggerTeamLeave 0