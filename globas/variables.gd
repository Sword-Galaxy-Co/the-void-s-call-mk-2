@tool
extends Node 

var Dev_mode = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))["Divinity"]

const story_index_num = 0
#var S = JSON.parse_string(str(FileAccess.open("res://Story.json",FileAccess.READ).get_as_text()))

var end = "user://endings.json"
var quit_log = "user://quit.Log.json"

var save_file = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))

func _run():
	print("test")
	print(Dev_mode)
	print(save_file["stats"])

func End_check():
	if FileAccess.file_exists(end):
		print("lol")
	else:
		print("boop")
