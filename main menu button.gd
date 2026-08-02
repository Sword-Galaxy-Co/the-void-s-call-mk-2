extends Control

var save = {
}

var file_path = "user://Save.json"
var save_base_path ="res://Base Save Data.json"

func _on_new_game_pressed() -> void:
	#var save_base = FileAccess.open("res://Base Save Data.json",FileAccess.READ)
	#var file = FileAccess.open(filepath,FileAccess.WRITE)
	$"New Game".text = "Work in Progress"
	$"New Game".disabled = true

func _on_load_game_pressed() -> void:
	var file = FileAccess.open(file_path,FileAccess.READ)
	if true and FileAccess.file_exists(file_path):
		var f1 = file.get_as_text() #gets file data
		file.close()
		var v2 =JSON.new()
		var f2 =JSON.parse_string(file.get_as_text())
		pass
		print(f1 + "\n"+v2+"\n"+f2)
	else:
		$"Load Game".text = "Work in Progress"
		$"Load Game".disabled = true
	#pass # Replace with function body.

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
			#FileAccess.open("user://test.text",FileAccess.WRITE).store_string("Didn't want to stay")
			if FileAccess.file_exists("User://logs.json") == true:
				#var file1 = FileAccess.open("User://logs.endings",FileAccess.READ)
				print("filehere")
			else:
				var file2 = FileAccess.open("user://logs.json",FileAccess.WRITE)
				file2.store_string("Didn't want to stay")
				file2.close()
			get_tree().quit()
			
		_:
			print("error")
	pass # Replace with function body.
