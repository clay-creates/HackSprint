class_name Oven

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You open the oven."

func on_click():
	print("Oven clicked: " + clickable_text)
