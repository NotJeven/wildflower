#	Description:
#		main game and logic loop
#	Parents:
#		minecraft:tick

execute if entity @a[tag=!playerInitialized] run function wildflower:initialize_player