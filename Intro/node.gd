extends Node

@onready var main_text: RichTextLabel = $Panel/Node/Panel/Panel/RichTextLabel
@onready var button_1_text: RichTextLabel = $"Panel/button 1/button 1 text"
@onready var ani_player: AnimationPlayer = $Panel/Node/Panel/AnimationPlayer
@onready var button_2_text: RichTextLabel = $"Panel/button 2/button 2 text"
@onready var Skills: OptionButton = $Panel/Skills

var story_code_int = Variable.story_index_num

func _ready() -> void:
	main_text.text = ""
	button_1_text.text = ""
	button_2_text.text = ""
	ani_player.play("RESET")
	ani_player.play("anime 1")
	get_tree().call_group("show later","hide")
	pass


func _on_skills_item_selected(index: int) -> void:
	for i in range(Skills.item_count):
		match Skills.get_item_text(i):
			"Skill 1": story_code_int +=1; print(story_code_int); main_text.text = Story_Jsons.Chapter_0_func(story_code_int,"Skill 1")
			"Skill 2": story_code_int +=1; print(story_code_int); main_text.text = Story_Jsons.Chapter_0_func(story_code_int,"Skill 2")
			_:pass
		pass
	pass # Replace with function body.


func _on__input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			story_code_int += 1
			main_text.text = Story_Jsons.Chapter_0_func(story_code_int,"yes")

func _on_2_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("-");
			if story_code_int >= 0 and story_code_int != 0:
				story_code_int -= 1
				main_text.text = Story_Jsons.Chapter_0_func(story_code_int,"no")
			elif story_code_int == 0 and EngineDebugger.is_active() == true:
				get_tree().quit()

var x = 0
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "anime 1":
		print(Story_Jsons.Chapter_0_const["part 1"][0])
		main_text.text = Story_Jsons.Chapter_0_const["part 1"][0]
		await get_tree().create_timer(.5).timeout
		print(Story_Jsons.Chapter_0_const["part 1"][1]["button 1"][1])
		$"Panel/button 1".visible = Story_Jsons.Chapter_0_const["part 1"][1]["button 1"][0]
		button_1_text.text =Story_Jsons.Chapter_0_const["part 1"][1]["button 1"][1]
		await get_tree().create_timer(.5).timeout
		print(Story_Jsons.Chapter_0_const["part 1"][1]["button 2"][1])
		$"Panel/button 2".visible = Story_Jsons.Chapter_0_const["part 1"][1]["button 2"][0]
		button_2_text.text = Story_Jsons.Chapter_0_const["part 1"][1]["button 2"][1]
		await get_tree().create_timer(.5).timeout
		print(Story_Jsons.Chapter_0_const["part 1"][1]["Skills"][1])
		x = 0
		for item in Story_Jsons.Chapter_0_const["part 1"][1]["Skills"][1]:
			Skills.add_item(str(Story_Jsons.Chapter_0_const["part 1"][1]["Skills"][1][x]),x)
			x += 1
			await get_tree().create_timer(0.1).timeout
			print(x) 
			pass
		Skills.visible = Story_Jsons.Chapter_0_const["part 1"][1]["Skills"][0]
		await  get_tree().create_timer(.5).timeout
		main_text.text = Story_Jsons.Chapter_0_const["part 1"][2]
		#-# t
