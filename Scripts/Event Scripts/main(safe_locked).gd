extends Node2D

var is_note_visible = false

func change_scene(scene_path):
	get_tree().change_scene_to_file(scene_path)

func _on_right_arrow_input_event(viewport, event, shape_idx):
	var current_scene = get_tree().current_scene.get_path()
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		
		if str(current_scene) == "/root/Main(Safe-Locked)":
			Fade.fade_out(2.0)
			FootSteps.play_footsteps()
			change_scene("res://Scenes/doorway.tscn")
	
func _on_left_arrow_input_event(viewport, event, shape_idx):
	var current_scene = str(get_tree().current_scene.get_path())
	print(current_scene)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Left arrow clicked")
		
		if str(current_scene) == "/root/Main(Safe-Locked)":
			Fade.fade_out(2.0)
			FootSteps.play_footsteps()
			change_scene("res://Scenes/living_room.tscn")

func set_dialogue_text():
	var text: String = "Hmm, It seems I've found something.."

func _ready():
#	DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "Main_Intro")
	pass

func _on_note_y_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-Y (large)").hide()
			NoteFound.play_paper()
			GlobalVar.track_maintwo_click()
			DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "Main2")
			is_note_visible = false
		else:
			get_node("Note-Y (large)").show()
			is_note_visible = true

func _on_note_t_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-T (large)").hide()
			NoteFound.play_paper()
			GlobalVar.track_mainone_click()
			is_note_visible = false
		else:
			get_node("Note-T (large)").show()
			is_note_visible = true


func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if is_note_visible:
			get_node("Note-Y (large)").hide()
			get_node("Note-T (large)").hide()
			is_note_visible = false
