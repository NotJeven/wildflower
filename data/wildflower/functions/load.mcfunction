#	Description:
#		Runs on map load.
#		Will run initialization if it finds that the scoreboard does not exist and has not already run initialization
#	Parents:
#		minecraft:load

scoreboard objectives add var dummy "Variables"
execute unless score #initialized var matches 1 run function wildflower:init
scoreboard players operation #initialized var = #TRUE var
