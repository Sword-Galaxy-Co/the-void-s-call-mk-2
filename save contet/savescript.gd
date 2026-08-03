extends Node

var filepath = "user://test.json"

func new_game()->void:
	var savefilebase = FileAccess.open("res://save contet/Base Save Data.json",FileAccess.READ)
	var sfbtext = savefilebase.get_as_text()
	print(sfbtext)
	var buffer = JSON.parse_string(sfbtext)
	savefilebase.close()
	buffer["stats"]["luck"] = snapped(randf_range(0,9),0.1)
	
	print(buffer)
	var file =FileAccess.open(filepath,FileAccess.WRITE)
	file.store_string(JSON.stringify(buffer,"\t"))
	pass

func save(content,area:String = ""):
	if FileAccess.file_exists(filepath)==true:
		var file =FileAccess.open(filepath,FileAccess.READ)
		var filetext = file.get_as_text()
		var filejson =JSON.parse_string(str(filetext))
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
			_: pass
	pass
