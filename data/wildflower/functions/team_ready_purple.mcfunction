#	Description:
#		sets the purple team to 'ready'
#	Activator:
#		@a[scores={triggerTeamReady=1},team=purple]
#	Parents:
#		wildflower:update

execute if score #teamReadyPurple var = #NOTREADY var run scoreboard players operation #teamReadyPurple var = #TURNREADY var
execute if score #teamReadyPurple var = #READY var run scoreboard players operation #teamReadyPurple var = #TURNNOTREADY var

# flavour
execute if score #teamReadyPurple var = #TURNREADY var run tellraw @a[scores={triggerTeamReady=1},team=purple] [{"text":"Ready purple"}]
execute if score #teamReadyPurple var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=purple] subtitle [{"text":"Ready purple"}]
execute if score #teamReadyPurple var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=purple] title ""
execute if score #teamReadyPurple var = #TURNREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=purple] ~ ~ ~ 1 1 1
execute if score #teamReadyPurple var = #TURNREADY var run team join ready §nFoxglove

execute if score #teamReadyPurple var = #TURNNOTREADY var run tellraw @a[scores={triggerTeamReady=1},team=purple] [{"text":"Not Ready purple"}]
execute if score #teamReadyPurple var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=purple] subtitle [{"text":"Not Ready purple"}]
execute if score #teamReadyPurple var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=purple] title ""
execute if score #teamReadyPurple var = #TURNNOTREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=purple] ~ ~ ~ 1 1 1
execute if score #teamReadyPurple var = #TURNNOTREADY var run team join notready §nFoxglove

# toggle
execute if score #teamReadyPurple var = #TURNREADY var run scoreboard players operation #teamReadyPurple var = #READY var
execute if score #teamReadyPurple var = #TURNNOTREADY var run scoreboard players operation #teamReadyPurple var = #NOTREADY var

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamReady=1},team=purple] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamReady=1},team=purple] triggerTeamReady 0