#	Description:
#		team join handler for team spec
#	Activator:
#		@a[scores={triggerTeamJoin=3}]
#	Parents:
#		wildflower:update


team join grey @a[scores={triggerTeamJoin=3}]

# items
tag @a[scores={triggerTeamJoin=3}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[scores={triggerTeamJoin=3}] [{"text":"Joined Spectator"}]
title @a[scores={triggerTeamJoin=3}] subtitle [{"text":"Joined Spectator"}]
title @a[scores={triggerTeamJoin=3}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=3}] ~ ~ ~ 1 1 1

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=3}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamJoin=3}] triggerTeamJoin 0