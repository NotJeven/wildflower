#	Description:
#		team join handler for team aqua
#	Activator:
#		@a[score={triggerTeamJoinAqua=1}]
#	Parents:
#		wildflower:update


team join aqua @a[score={triggerTeamJoinAqua=1}]

# items
tag @a[score={triggerTeamJoinAqua=1}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[score={triggerTeamJoinAqua=1}] [{"text":"Joined Aqua"}]
title @a[score={triggerTeamJoinAqua=1}] subtitle [{"text":"Joined Aqua"}]
title @a[score={triggerTeamJoinAqua=1}] title ""
playsound entity.horse.armor master @a[score={triggerTeamJoinAqua=1}] ~ ~ ~ 1 1 1

# menu
execute if score #menuHidden var = #FALSE var run tag @a[score={triggerTeamJoinAqua=1}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[score={triggerTeamJoinAqua=1}] triggerTeamJoinAqua 0