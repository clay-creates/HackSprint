class_name Safe

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You discover a ...safe?"

func on_click():
	print("Safe clicked: " + clickable_text)
