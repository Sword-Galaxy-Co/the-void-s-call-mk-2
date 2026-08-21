@tool
extends Node

const Chapter_0_const = {
	"part 1" : [
		"Hello so this is the intro system, before we start lets turn on your buttons",
		{
			"button 1":[
				true,
				"yes"
			],
			"button 2":[
				true,
				"no"
			],
			"Skills":[
				true,
				[
					"Skill 1",
					"Skill 2"
				]
			]
		},
		"Okay can you see the buttons?",
		{
			"yes":"Okay thank you",
			"no": "... Really",
			"Skill 1":"Okay why",
			"Skill 2":"Okay\n but why that"
		}
		
	],
	"part 2":[
		"Okay so there",
		{
			"button 1":[
				true,
			],
			"button 2":[
				true,
			],
			"Skills":[
				true,
			]
		}
	]
}

func Chapter_0_func(Story_marker:int =0, type_of_input:String=""):
	var x = str(Story_marker)
	match Story_marker:
		1:
			match type_of_input:
				"yes":
					return Chapter_0_const["part 1"][3]["yes"]
				"no":
					return Chapter_0_const["part 1"][3]["no"]
				Chapter_0_const["part 1"][1]["Skills"][1][0]:
					return Chapter_0_const["part 1"][3]["Skill 1"]
				Chapter_0_const["part 1"][1]["Skills"][1][1]:
					return Chapter_0_const["part 1"][3]["Skill 2"]
				_:
					return x
		2:
			return "okay so"
		_:return x
