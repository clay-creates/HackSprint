class_name Pillows

extends "res://Scripts/Classes - Items/Base_Class.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	clickable_text = "You move the pillows."

func on_click():
	print("Fruitbowl clicked: " + clickable_text)
