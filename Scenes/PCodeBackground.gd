extends Polygon2D
@onready var line_edit = $LineEdit
@onready var background = $PCBackground  # If this is used for something specific, keep it.

func _ready():
	pass

func _on_line_edit_text_changed(new_text):
	# This function is currently empty. You can use it to dynamically change something as text is typed, if needed.
	pass

func _on_line_edit_text_submitted(new_text):
	# Here, you are setting the LineEdit text to uppercase upon submission, which is triggered by pressing Enter.
	line_edit.text = new_text.to_upper()

func _on_button_pressed():
	# Convert text to upper case when the button is pressed and check if it equals "REALITY".
	var text = line_edit.text.to_upper()
	line_edit.text = text  # Update the text field to show the uppercase text.

	if text == "REALITY":
		# User has completed the game! 
		get_tree().change_scene_to_file("res://Scenes/3D Scene/interrogation_room/EndingRoom.tscn")

	else:
		# WRONG 
		DialogueManager.show_example_dialogue_balloon(load("res://Dialogue/Dialogue.dialogue"), "WrongPassword")

