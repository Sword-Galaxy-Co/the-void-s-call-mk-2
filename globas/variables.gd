@tool
extends Node 

const story_index_num = 0

var save_file = JSON.parse_string(str(FileAccess.open(SaveScript.filepath,FileAccess.READ).get_as_text()))

func _run():
	print("test")
	print(save_file["stats"])

func End_check(Ending_Int:int = 0, Ending_String: String = "" ):
	if FileAccess.file_exists(SaveScript.filepath):
		print(save_file["stats"]["name"])
		print(save_file["Story Index"])
		print(save_file["stats"])
		print(save_file["endings"])
		if Ending_Int in save_file["endings"]:
			save_file["endings"][Ending_Int] = Ending_String+","
		pass
	else:
		FileAccess.file_exists("user://text")
