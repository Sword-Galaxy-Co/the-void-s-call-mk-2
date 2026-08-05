extends Node
#var quick_debug =true
@onready var panel: Panel = $Panel/Panel
var story_code_int:int = 1
@onready var bootup: AudioStreamPlayer2D = $Panel/Node/Panel/bootup
@onready var animation_player: AnimationPlayer = $Panel/Node/Panel/AnimationPlayer

func _ready() -> void:
	animation_player.play("anime 1");
	bootup.play(0.0)
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			#if
			story_code_int += 1
			
		if event.button_index == MOUSE_BUTTON_RIGHT:
			print("-");
			if story_code_int > 0 and story_code_int != 0:
				story_code_int -= 1
				print("fail?")
			elif story_code_int == 0 and EngineDebugger.is_active() == true:
				get_tree().quit()
			else:
				pass
				
		#panel.hide();
	

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "anime 1":print("4"); panel.show();
	pass # Replace with function body.
