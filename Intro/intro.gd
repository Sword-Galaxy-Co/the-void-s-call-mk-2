extends Node2D

@onready var ap: AnimationPlayer = $bglayer/AnimationPlayer
@onready var L: Label = $bglayer/Label
var line1 = "Okay lets see how well you can interact with this world."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ap.play("panel open")
	#var t = ap.get_animation("panel open").length / line1.length()
	#print(t)
	print("ready")
	L.add_theme_color_override("font_color",Color("000000ff"))
	L.text = line1
	while L.text.length() >= L.visible_characters:
		await get_tree().create_timer((L.text.length()/10.0)).timeout
