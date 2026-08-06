extends Node
#var quick_debug =true
@onready var panel: Panel = $Panel/Panel
var story_code_int:int = 1

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			#if
			story_code_int += 1

		if event.button_index == MOUSE_BUTTON_RIGHT and EngineDebugger.is_active() == true:
			print("-");
			if story_code_int >= 0 and story_code_int != 0:
				story_code_int -= 1
				print("fail?")
			elif story_code_int == 0:
				get_tree().quit()
		if event.button_index == MOUSE_BUTTON_LEFT or MOUSE_BUTTON_RIGHT:
			update_button_and_text()

func update_button_and_text():
	print(story_code_int)
	pass
