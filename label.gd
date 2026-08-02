extends Label

@onready var L: Label = $"."
@onready var NG: Button = %"New Game"
@onready var LG: Button = %"Load Game"
@onready var QB: Button = %"quit button"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().call_group("Core","hide")
	L.visible_characters = 0
	NG.disabled = true
	LG.disabled = true
	QB.disabled = true
	var current = 0
	await get_tree().create_timer(1).timeout
	while current <= L.text.length():
		L.visible_characters = current
		current += 1
		await get_tree().create_timer(.2).timeout
	print("Title loaded")
	await get_tree().create_timer(.1).timeout
	NG.disabled = false
	LG.disabled = false
	QB.disabled = false
	Savescript.save("test")
