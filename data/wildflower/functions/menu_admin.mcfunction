#	Description:
#		deals an admin menu
#	Activator:
#		@a[tag=menuRequest,tag=menuAdmin]
#	Parents:
#		wildflower:menu
#		wildflower:game_end
#		wildflower:update

tellraw @a[tag=menuRequest,tag=menuAdmin] {"translate":"wildflower.menu.admin"}
#playsound @a[tag=menuRequest,tag=menuAdmin]

tag @a[tag=menuRequest,tag=menuAdmin] remove menuRequest