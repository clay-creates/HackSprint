extends Node2D

var is_note_visible = false

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Fade.fade_out(2.0)
		FootSteps.play_footsteps()
		if str(current_scene) == "/root/Living-Room(Fruitbowl-Clicked)":
			change_scene("res://Scenes/main_room.tscn")
	
func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Fade.fade_out(2.0)
		FootSteps.play_footsteps()
		if str(current_scene) == "/root/Living-Room(Fruitbowl-Clicked)":
			change_scene("res://Scenes/dining_room.tscn")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-R (large)").hide()
			is_note_visible = false
		else:
			NoteFound.play_paper()
			GlobalVar.track_fruit_click()
			get_node("Note-R (large)").show()
			is_note_visible = true
			DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "Fruit_Bowl")

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-R (large)").hide()
			is_note_visible = false
