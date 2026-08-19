@tool
extends Node

var filepath = "user://Saves.json"

func new_game()->void:
	var buffer = JSON.parse_string(FileAccess.open("res://save contet/Base Save Data.json",FileAccess.READ).get_as_text())
	buffer["stats"]["luck"] = snapped(randf_range(0,9),0.1)
	
	print(buffer)
	FileAccess.open(filepath,FileAccess.WRITE).store_string(JSON.stringify(buffer,"\t"))
	print(FileAccess.open(filepath,FileAccess.READ))
	
	pass

func save(content,area:String = ""):
	if FileAccess.file_exists(filepath)==true:
		print(content)
		var filejson =JSON.parse_string(str(FileAccess.open(filepath,FileAccess.READ).get_as_text()))
		print(filejson)
		match area:
			"Name":
				filejson["Name"] = content
			"race":
				if typeof(content) == TYPE_STRING:
					filejson["stats"]["race"] = content
				else: pass
			"luck":
				return filejson["stats"]["race"]["luck"]
			"story":
				print(Variable.Divinty)
				pass
			_: pass
		FileAccess.open(filepath,FileAccess.WRITE).store_string(str(filejson))
	pass

func load_game()->void:
	#Variable.Data = ""
	print("Loading....")
	print("Sorry, but I have not made a load system I haven't figured out how to do that")
	pass
