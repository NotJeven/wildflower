#	Description:
#		makes the sqectator team 'ready'
#	Activator:
#		@a[scores={triggerTeamReady=1},team=spectator]
#	Parents:
#		wildflower:update


execute if score #teamReadySpectator var = #NOTREADY var run scoreboard players operation #teamReadySpectator var = #TURNREADY var
execute if score #teamReadySpectator var = #READY var run scoreboard players operation #teamReadySpectator var = #TURNNOTREADY var

# flavour
execute if score #teamReadySpectator var = #TURNREADY var run tellraw @a[scores={triggerTeamReady=1},team=spectator] [{"text":"Ready aqua"}]
execute if score #teamReadySpectator var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=spectator] subtitle [{"text":"Ready aqua"}]
execute if score #teamReadySpectator var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=spectator] title ""
execute if score #teamReadySpectator var = #TURNREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=spectator] ~ ~ ~ 1 1 1

execute if score #teamReadySpectator var = #TURNNOTREADY var run tellraw @a[scores={triggerTeamReady=1},team=spectator] [{"text":"Not Ready aqua"}]
execute if score #teamReadySpectator var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=spectator] subtitle [{"text":"Not Ready aqua"}]
execute if score #teamReadySpectator var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=spectator] title ""
execute if score #teamReadySpectator var = #TURNNOTREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=spectator] ~ ~ ~ 1 1 1

# toggle
execute if score #teamReadySpectator var = #TURNREADY var run scoreboard players operation #teamReadySpectator var = #READY var
execute if score #teamReadySpectator var = #TURNNOTREADY var run scoreboard players operation #teamReadySpectator var = #NOTREADY var

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamReady=1},team=spectator] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamReady=1},team=spectator] triggerTeamReady 0