#	Description:
#		team join handler for team aqua
#	Activator:
#		@a[scores={triggerTeamJoin=2}]
#	Parents:
#		wildflower:update


team join aqua @a[scores={triggerTeamJoin=2}]

# items
tag @a[scores={triggerTeamJoin=2}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[scores={triggerTeamJoin=2}] [{"text":"Joined Aqua"}]
title @a[scores={triggerTeamJoin=2}] subtitle [{"text":"Joined Aqua"}]
title @a[scores={triggerTeamJoin=2}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=2}] ~ ~ ~ 1 1 1
scoreboard players set @a[scores={triggerTeamJoin=2}] sidebarDisplay 4

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=2}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamJoin=2}] triggerTeamJoin 0