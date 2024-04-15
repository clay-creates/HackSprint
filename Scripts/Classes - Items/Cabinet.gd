class_name Cabinet

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You open the cabinet."

func on_click():
	print("Cabinet clicked: " + clickable_text)
