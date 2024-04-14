class_name Fruitbowl

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You move the fruitbowl."

func on_click():
	print("Fruitbowl clicked: " + clickable_text)
