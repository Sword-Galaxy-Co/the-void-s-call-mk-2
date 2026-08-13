@tool
extends Node

const Chapter_0_const = {
	"part 1" : [
		"Hello so this is the intro system, before we start lets turn on your buttons",
	{
		"button 1":[
			true,
			"Next"
		],
		"button 2":[
			true,
			"Back"
		],
		"Skills":[
			true,
			[
				"skill 1",
				"Skill 2"
			]
		]
	},
		"Okay can you see the buttons?",
		{
			"yes":"Okay thank you",
			"no":"... you liar",
			"Skill 1":"Okay why",
			"Skill 2":"Okay\n but why that"
		}
		
	]
}

func Chapter_0_func(Story_marker:int =0, type_of_input:String=""):
	var x = str(Story_marker)
	match type_of_input:
		"yes":
			pass
		"no":
			pass
	return x
	
