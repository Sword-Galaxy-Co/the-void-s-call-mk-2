extends Node
#var quick_debug =true
@onready var panel: Panel = $Panel/Panel
var story_code_int = Variable.story_index_num
@onready var main_text: RichTextLabel = $Panel/Node/Panel/Panel/RichTextLabel
@onready var button_1_text: RichTextLabel = $"Panel/button 1/button 1 text"

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
		update_button_and_text()

func update_button_and_text():
	print(story_code_int)
	if story_code_int == Variable.S["Intro"].size() or story_code_int <= Variable.S["Intro"].size():
		print(Variable.S["Intro"][story_code_int])
		print("???")
		Variable.S["Intro"]
		pass
	elif story_code_int >= Variable.S["Intro"].size():
		print('test')
		pass
	else:
		print ("LOL")

func _ready() -> void:
	update_button_and_text()
	button_1_text.text =""
	main_text.text =""
	pass
