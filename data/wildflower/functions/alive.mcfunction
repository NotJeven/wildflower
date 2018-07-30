#	Description:
#		handles a player when they respawn
#	Activator:
#		@a[score={sinceDeath=1..},tag=dead]
#	Parents:
#		wildflower:update

# effects
effect give @a[tag=!initialized] minecraft:night_vision 99999 0 true
effect give @a[tag=dead,score={sinceDeath=1..}] minecraft:regeneration 99999 0 true
effect give @a[tag=dead,score={sinceDeath=1..}] minecraft:jump_boost 99999 2 true

# items
tag @a[score={sinceDeath=1..},tag=dead] add giveItems
function wildflower:give_items

tag @a[score={sinceDeath=1..},tag=dead] remove dead
