extends Node

@onready var panel: Panel = $Panel/Panel
var story_code_int:int = 0 
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			#if
			story_code_int += 1
			
		if event.button_index == MOUSE_BUTTON_RIGHT:
			print("-");
			if story_code_int > 0:
				story_code_int -= 1
			else:
				pass
		#panel.hide();
	

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "anime 1":print("4"); panel.show();
	pass # Replace with function body.
