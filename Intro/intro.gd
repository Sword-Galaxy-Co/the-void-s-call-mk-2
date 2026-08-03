extends Node2D

@onready var ap: AnimationPlayer = $Panel/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ap.play("panel open")
	print("ready")
