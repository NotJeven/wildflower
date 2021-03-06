#	Description:
#		gives the basic items to players
#	Activator:
#		@a[tag=giveItems]
#	Parents:
#		wildflower:team_join_purple, wildflower:team_join_aqua, wildflower:alive

tag @a[tag=giveItems,nbt=!{Inventory:[{id:"minecraft:bow"}]}] add needBow
give @a[tag=giveItems,tag=needBow] minecraft:bow{Unbreakable:1,Enchantments:[{id:infinity,lvl:1},{id:knockback,lvl:1}],display:{Name:"\"Heavy Bow\"",Lore:["Packs a punch, but","you move slower."]},AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.2,Operation:1,UUIDMost:18208,UUIDLeast:171698,Slot:"mainhand"}]} 1
tag @a[tag=giveItems,tag=needBow] remove needBow

tag @a[tag=giveItems,nbt=!{Inventory:[{id:"minecraft:splash_potion"}]}] add needPot
give @a[tag=giveItems,tag=needPot] minecraft:splash_potion{CustomPotionEffects:[{Id:6}],display:{Name:"\"Mom's Med Kit\"",Lore:["Can patch any wound, but","you will have to sit still!"]},AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-1.0,Operation:1,UUIDMost:18208,UUIDLeast:171698,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:.75,Operation:1,UUIDMost:79170,UUIDLeast:178540,Slot:"mainhand"}]} 1
tag @a[tag=giveItems,tag=needPot] remove needPot

tag @a[tag=giveItems,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] add needArrow
give @a[tag=giveItems,tag=needArrow] minecraft:arrow{display:{Name:"\"Arrow of Flight\"",Lore:["You move faster, but","lose footing quickly."]},AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:.4,Operation:1,UUIDMost:33760,UUIDLeast:123522,Slot:"mainhand"},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:-.1,Operation:1,UUIDMost:79170,UUIDLeast:178540,Slot:"mainhand"}]} 1
tag @a[tag=giveItems,tag=needArrow] remove needArrow

tag @a[tag=giveItems] remove giveItems