@tool
extends Node 

var Dev_mode = JSON.parse_string(str(FileAccess.open(SaveScript.filepath,FileAccess.READ).get_as_text()))["Divinity"]

const story_index_num = 0

var end = "user://endings.json"
var quit_log = "user://quit.Log.json"

var save_file = JSON.parse_string(str(FileAccess.open(SaveScript.filepath,FileAccess.READ).get_as_text()))

func _run():
	print("test")
	print(Dev_mode)
	print(save_file["stats"])

func End_check(Ending_Int:int = 0, Ending_String: String = "" ):
	if FileAccess.file_exists(end):
		var file = JSON.parse_string(str(FileAccess.open(end,FileAccess.READ_WRITE)))
		print(file)
		file.store_sting (str({"Ending "+str(Ending_Int): Ending_String}))
		print("lol")	
	else:
		FileAccess.open(end,FileAccess.WRITE).store_string(str({"Ending "+str(Ending_Int): Ending_String,}))
		print("boop")
