extends Node2D

func _ready():
	var safe = Safe.new()
	add_child(safe)

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Right arrow clicked")
		
		if str(current_scene) == "/root/Main-Room":
			change_scene("res://Scenes/doorway.tscn")


func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Main-Room":
			change_scene("res://Scenes/living_room.tscn")


func _on_safe_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var safe = Safe.new()
		add_child(safe)
		print(safe.clickable_text)
		change_scene("res://Scenes/Event-Scenes/main(safe_locked).tscn")
