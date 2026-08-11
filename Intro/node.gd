extends Node

@onready var main_text: RichTextLabel = $Panel/Node/Panel/Panel/RichTextLabel
@onready var button_1_text: RichTextLabel = $"Panel/button 1/button 1 text"

var story_code_int = Variable.story_index_num

func _ready() -> void:
	pass

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			#if
			story_code_int += 1

		elif event.button_index == MOUSE_BUTTON_RIGHT and EngineDebugger.is_active() == true:
			print("-");
			if story_code_int >= 0 and story_code_int != 0:
				story_code_int -= 1
				print("fail?")
			elif story_code_int == 0:
				get_tree().quit()
