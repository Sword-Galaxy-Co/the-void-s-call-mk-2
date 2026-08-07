#@tool
extends Node
#extends EditorScript

const story_index_num = 0
var S = JSON.parse_string(str(FileAccess.open("res://Story.json",FileAccess.READ).get_as_text()))

var Divinty = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))["Divinity"]
var save_file_stats = JSON.parse_string(str(FileAccess.open(Savescript.filepath,FileAccess.READ).get_as_text()))["stats"]

func run():
	print("test")
	print(Divinty)
	print(save_file_stats)
