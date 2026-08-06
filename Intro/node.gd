extends Node
#var quick_debug =true
@onready var panel: Panel = $Panel/Panel
var story_code_int:int = 1



var sample_hz = 22050.0 # Keep the number of samples to mix low, GDScript is not super fast.
var pulse_hz = 440.0
var phase = 0.0

var playback: AudioStreamPlayback = null # Actual playback stream, assigned in _ready().

func _fill_buffer():
	var increment = pulse_hz / sample_hz

	var to_fill = playback.get_frames_available()
	while to_fill > 0:
		playback.push_frame(Vector2.ONE * sin(phase * TAU)) # Audio frames are stereo.
		phase = fmod(phase + increment, 1.0)
		to_fill -= 1


func _ready():
		# Setting mix rate is only possible before play().
	$Player.stream.mix_rate = sample_hz
	$Player.play()
	playback = $Player.get_stream_playback()
	# `_fill_buffer` must be called *after* setting `playback`,
	# as `fill_buffer` uses the `playback` member variable.
	_fill_buffer()

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("+");
			#if
			story_code_int += 1

		if event.button_index == MOUSE_BUTTON_RIGHT and EngineDebugger.is_active() == true:
			print("-");
			if story_code_int >= 0 and story_code_int != 0:
				story_code_int -= 1
				print("fail?")
			elif story_code_int == 0:
				get_tree().quit()
		if event.button_index == MOUSE_BUTTON_LEFT or MOUSE_BUTTON_RIGHT:
			update_button_and_text()

func update_button_and_text():
	print(story_code_int)
	pass
