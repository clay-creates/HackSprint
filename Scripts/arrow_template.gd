extends Node2D

func _ready():
	pass

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Right arrow clicked")
		
		if str(current_scene) == "/root/Starting-Room":
			change_scene("res://Scenes/doorway.tscn")
		if str(current_scene) == "/root/Living-Room":
			change_scene("res://Scenes/main_room.tscn")


func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Starting-Room":
			change_scene("res://Scenes/living_room.tscn")
		if str(current_scene) == "/root/Doorway":
			change_scene("res://Scenes/main_room.tscn")
