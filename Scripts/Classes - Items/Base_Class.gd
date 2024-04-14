# BaseClickableItem.gd
extends Node2D

var clickable_text = "Default text"

func _ready():
	pass

func on_click():
	print("Item clicked: " + clickable_text)
