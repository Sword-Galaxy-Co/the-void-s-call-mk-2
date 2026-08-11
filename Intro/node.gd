extends Node
#var quick_debug =true
var story_code_int = Variable.story_index_num
@onready var main_text: RichTextLabel = $Panel/Node/Panel/Panel/RichTextLabel
@onready var button_1_text: RichTextLabel = $"Panel/button 1/button 1 text"


func _ready() -> void:
	await get_tree().create_timer(1.97).timeout
	update_button_and_text()
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
		update_button_and_text()

var t = 0

func update_button_and_text():
	print(story_code_int)
	if story_code_int == Variable.S["Intro"].size() or story_code_int <= Variable.S["Intro"].size():
		print(Variable.S["Intro"][story_code_int])
		print("???")
		main_text.text = Variable.S["Intro"][story_code_int]
		button_1_text.text = Variable.S["Intro_C"][story_code_int]
		pass
	elif story_code_int >= Variable.S["Intro"].size():
		print('test')
		match t:
			_:
				
				get_tree().quit()
	else:
		print ("LOL")
