extends Node2D

func _ready():
	var vent = Vent.new()
	add_child(vent)
	Fade.fade_in(2.0)

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Right arrow clicked")
		
		if str(current_scene) == "/root/Doorway":
			FootSteps.play_footsteps()
			Fade.fade_out(2.0)
			change_scene("res://Scenes/bedroom.tscn")


func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Doorway":
			FootSteps.play_footsteps()
			Fade.fade_out(2.0)
			change_scene("res://Scenes/main_room.tscn")


func _on_vent_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var vent = Vent.new()
		add_child(vent)
		print(vent.clickable_text)
		change_scene("res://Scenes/Event-Scenes/doorway(vent_clicked).tscn")
