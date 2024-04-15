extends Node2D

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Right arrow clicked")
		
		if str(current_scene) == "/root/Main(Safe-Locked)":
			change_scene("res://Scenes/doorway.tscn")
	
func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Main(Safe-Locked)":
			change_scene("res://Scenes/living_room.tscn")

func set_dialogue_text():
	var text: String = "Hmm, It seems I've found something.."

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "main_room_safe_found")
