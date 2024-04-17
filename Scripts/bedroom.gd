extends Node2D

func _ready():
	var pillows = Pillows.new()
	add_child(pillows)
	Fade.fade_in(2.0)

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Right arrow clicked")
		
		if str(current_scene) == "/root/Bedroom":
			FootSteps.play_footsteps()
			Fade.fade_out(2.0)
			change_scene("res://Scenes/kitchen.tscn")


func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Bedroom":
			FootSteps.play_footsteps()
			Fade.fade_out(2.0)
			change_scene("res://Scenes/doorway.tscn")


func _on_pillows_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var pillows = Pillows.new()
		add_child(pillows)
		print(pillows.clickable_text)
		change_scene("res://Scenes/Event-Scenes/bedroom(pillows_clicked).tscn")
