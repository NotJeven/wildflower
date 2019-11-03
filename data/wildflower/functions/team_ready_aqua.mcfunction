#	Description:
#		makes the aqua team 'ready'
#	Activator:
#		@a[scores={triggerTeamReady=1},team=aqua]
#	Parents:
#		wildflower:update


execute if score #teamReadyAqua var = #NOTREADY var run scoreboard players operation #teamReadyAqua var = #TURNREADY var
execute if score #teamReadyAqua var = #READY var run scoreboard players operation #teamReadyAqua var = #TURNNOTREADY var

# flavour
execute if score #teamReadyAqua var = #TURNREADY var run tellraw @a[scores={triggerTeamReady=1},team=aqua] [{"text":"Ready aqua"}]
execute if score #teamReadyAqua var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=aqua] subtitle [{"text":"Ready aqua"}]
execute if score #teamReadyAqua var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=aqua] title ""
execute if score #teamReadyAqua var = #TURNREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=aqua] ~ ~ ~ 1 1 1
execute if score #teamReadyAqua var = #TURNREADY var run team join ready §nWolfsbane

execute if score #teamReadyAqua var = #TURNNOTREADY var run tellraw @a[scores={triggerTeamReady=1},team=aqua] [{"text":"Not Ready aqua"}]
execute if score #teamReadyAqua var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=aqua] subtitle [{"text":"Not Ready aqua"}]
execute if score #teamReadyAqua var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=aqua] title ""
execute if score #teamReadyAqua var = #TURNNOTREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=aqua] ~ ~ ~ 1 1 1
execute if score #teamReadyAqua var = #TURNNOTREADY var run team join notready §nWolfsbane

# toggle
execute if score #teamReadyAqua var = #TURNREADY var run scoreboard players operation #teamReadyAqua var = #READY var
execute if score #teamReadyAqua var = #TURNNOTREADY var run scoreboard players operation #teamReadyAqua var = #NOTREADY var

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamReady=1},team=aqua] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamReady=1},team=aqua] triggerTeamReady 0