class_name Vent

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You open the vent."

func on_click():
	print("Vent clicked: " + clickable_text)
