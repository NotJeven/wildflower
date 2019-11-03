#	Description:
#		team leave handler
#	Activator:
#		@a[scores={triggerTeamJoin=-1}]
#	Parents:
#		wildflower:update

team leave @a[scores={triggerTeamJoin=-1}]

#items 
clear @a[scores={triggerTeamJoin=-1}]

# flavour
tellraw @a[scores={triggerTeamJoin=-1}] [{"text":"Left team."}]
title @a[scores={triggerTeamJoin=-1}] subtitle [{"text":"Left team."}]
title @a[scores={triggerTeamJoin=-1}] title ""
#playsound <sound> <source> @a[scores={triggerTeamJoin=-1}] [x] [y] [z] [volume] [pitch] [minimumVolume]
scoreboard players reset @a[scores={triggerTeamJoin=-1}] sidebarDisplay 

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=-1}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamJoin=-1}] triggerTeamJoin 0