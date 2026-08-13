extends Control

var save = {
}

var save_base_path ="res://Base Save Data.json"

func _on_new_game_pressed() -> void:
	SaveScript.new_game()
	get_tree().change_scene_to_file("res://Intro.tscn")
	$"New Game".text = "Work in Progress"
	$"New Game".disabled = true


func _on_load_game_pressed() -> void:
	$"Load Game".text = "Error"
	$"Load Game".disabled = true

var click =0

func _on_quit_button_pressed() -> void:
	match click:
		0:
			#$"quit button".text = "why"
			#click +=1
		#1,2,3,4,5:
			#$"quit button".text = ""
			#click +=1 
		#6:
			#$"quit button".text = "Do you want to leave that badly"
			#click +=1
		#7:
			#$"quit button".text = "Ah I see, well then good bye"
			#click +=1
		#8:
			Variable.End_check(0,"Didn't want to stay")
			get_tree().quit()
		_:
			print("error")
	pass # Replace with function body.
