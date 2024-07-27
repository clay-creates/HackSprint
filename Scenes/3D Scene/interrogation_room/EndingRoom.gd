extends Node3D

func _ready():
	Fade.fade_in(5)
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

	# Timer for showing dialogue after 10 seconds
	var dialogue_timer = Timer.new()
	dialogue_timer.wait_time = 10
	dialogue_timer.one_shot = true
	dialogue_timer.connect("timeout", Callable(self, "_on_dialogue_timeout"))
	add_child(dialogue_timer)
	dialogue_timer.start()

	# Timer for fading out after 15 seconds
	var fade_timer = Timer.new()
	fade_timer.wait_time = 15
	fade_timer.one_shot = true
	fade_timer.connect("timeout", Callable(self, "_on_fade_timeout"))
	add_child(fade_timer)
	fade_timer.start()

	# Timer for quitting the game after 20 seconds
	var quit_timer = Timer.new()
	quit_timer.wait_time = 20
	quit_timer.one_shot = true
	quit_timer.connect("timeout", Callable(self, "_on_quit_timeout"))
	add_child(quit_timer)
	quit_timer.start()

func _on_dialogue_timeout():
	# Display the dialogue
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "ToBe")

func _on_fade_timeout():
	# Fade out
	Fade.fade_out(5.0)

func _on_quit_timeout():
	# Quit the game
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	
