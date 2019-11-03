#	Description:
#		team join handler for team purple
#	Activator:
#		@a[scores={triggerTeamJoin=1}]
#	Parents:
#		wildflower:update


team join purple @a[scores={triggerTeamJoin=1}]

# items
tag @a[scores={triggerTeamJoin=1}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[scores={triggerTeamJoin=1}] [{"text":"Joined Purple"}]
title @a[scores={triggerTeamJoin=1}] subtitle [{"text":"Joined Purple"}]
title @a[scores={triggerTeamJoin=1}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=1}] ~ ~ ~ 1 1 1

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=1}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu

scoreboard players set @a[scores={triggerTeamJoin=1}] triggerTeamJoin 0