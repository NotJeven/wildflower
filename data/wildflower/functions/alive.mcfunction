#	Description:
#		handles a player when they respawn
#	Activator:
#		@a[score={sinceDeath=1..},tag=dead]
#	Parents:
#		wildflower:update

# effects
effect give @a[tag=dead,scores={sinceDeath=1..}] minecraft:night_vision 99999 0 true
effect give @a[tag=dead,scores={sinceDeath=1..}] minecraft:regeneration 99999 0 true
effect give @a[tag=dead,scores={sinceDeath=1..}] minecraft:jump_boost 99999 2 true


# items
tag @a[scores={sinceDeath=1..},tag=dead] add giveItems
function wildflower:give_items

execute unless score #gameState var = #RUNNING var run gamemode spectator @a[tag=dead,scores={sinceDeath=1..},gamemode=!spectator]
execute if score #gameState var = #RUNNING var run gamemode adventure @a[tag=dead,scores={sinceDeath=1..},team=aqua,gamemode=!adventure]
execute if score #gameState var = #RUNNING var run gamemode adventure @a[tag=dead,scores={sinceDeath=1..},team=purple,gamemode=!adventure]
execute if score #gameState var = #RUNNING var run gamemode spectator @a[tag=dead,scores={sinceDeath=1..},team=spectator,gamemode=!spectator]
execute if score #gameState var = #RUNNING var run gamemode spectator @a[tag=dead,scores={sinceDeath=1..},team=,gamemode=!spectator]

tag @a[scores={sinceDeath=1..},tag=dead] remove dead
