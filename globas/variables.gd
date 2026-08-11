@tool
extends Node 

var Dev_mode = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))["Divinity"]

const story_index_num = 0

var end = "user://endings.json"
var quit_log = "user://quit.Log.json"

var save_file = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))

func _run():
	print("test")
	print(Dev_mode)
	print(save_file["stats"])

func End_check():
	if FileAccess.file_exists(end):
		var file = JSON.parse_string(str(FileAccess.open(end,FileAccess.READ_WRITE)))
		print(file)
		print("lol")
	else:
		var info = {}
		FileAccess.open(end,FileAccess.WRITE).store_string(str(info))
		print("boop")
