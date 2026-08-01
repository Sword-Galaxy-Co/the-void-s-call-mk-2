extends Control

var save = {
}

func _on_new_game_pressed() -> void:
	save = FileAccess.READ
	var file = FileAccess.open("user://Kon.json",FileAccess.WRITE)
	file.store_string(JSON.stringify(save,"\t"))

func _on_load_game_pressed() -> void:
	$"Load Game".text = "Work in Progress"
	$"Load Game".disabled = true
	pass # Replace with function body.

var click =0

func _on_quit_button_pressed() -> void:
	match click:
		0:
			$"quit button".text = "why"
			click +=1
		1,2,3,4,5:
			$"quit button".text = ""
			click +=1 
		6:
			$"quit button".text = "Do you want to leave that badly"
			click +=1
		7:
			$"quit button".text = "Ah I see, well then good bye"
			click +=1
		8:
			FileAccess.open("user://test.ending",FileAccess.WRITE).store_string("Didn't want to stay")
			get_tree().quit()
			
		_:
			print("error")
	pass # Replace with function body.
