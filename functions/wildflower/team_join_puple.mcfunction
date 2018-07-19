#	Description:
#		team join handler for team purple
#	Activator:
#		@a[score={triggerTeamJoinPurple=1}]
#	Parents:
#		wildflower:update

team join purple @a[score={triggerTeamJoinPurple=1}]

# items
tag @a[score={triggerTeamJoinPurple=1}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[score={triggerTeamJoinPurple=1}] [{"text":"Joined Purple"}]
title @a[score={triggerTeamJoinPurple=1}] subtitle [{"text":"Joined Purple"}]
title @a[score={triggerTeamJoinPurple=1}] title ""
playsound entity.horse.armor master @a[score={triggerTeamJoinPurple=1}] ~ ~ ~ 1 1 1

# menu
execute if score #menuHidden var = #FALSE var run tag @a[score={triggerTeamJoinPurple=1}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu

scoreboard players set @a[score={triggerTeamJoinPurple=1}] triggerTeamJoinPurple 0