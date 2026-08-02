extends Node

var filepath = "user://test.json"

func new_game(luck:float = 0.0)->void:
	var savefilebase = FileAccess.open("res://save contet/Base Save Data.json",FileAccess.READ)
	var sfbtext = savefilebase.get_as_text()
	print(sfbtext)
	var buffer = sfbtext
	savefilebase.close()
	#print(buffer["stats"])	
	var file =FileAccess.open(filepath,FileAccess.WRITE)
	file.store_string(buffer)
	pass

func save(content)->void:
	if FileAccess.file_exists(filepath)==true:
		var file =FileAccess.open(filepath,FileAccess.READ)
		var json =JSON.new()
		var filetext = file.get_as_text()
		var filestring =str(filetext) + content
		print(filestring)
	pass		
