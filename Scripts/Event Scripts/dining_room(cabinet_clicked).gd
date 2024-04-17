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
		if str(current_scene) == "/root/Dining-Room(Cabinet-Clicked)":
			change_scene("res://Scenes/living_room.tscn")


func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Fade.fade_out(2.0)
		FootSteps.play_footsteps()
		if str(current_scene) == "/root/Dining-Room(Cabinet-Clicked)":
			change_scene("res://Scenes/kitchen.tscn")

func _on_note_l_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-L (large)").hide()
			is_note_visible = false
		else:
			NoteFound.play_paper()
			GlobalVar.track_cabinet_click()
			get_node("Note-L (large)").show()
			is_note_visible = true
			DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "Cabinet")

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-L (large)").hide()
			is_note_visible = false
