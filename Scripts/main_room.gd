extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var scene = preload("res://Scenes/textbox.tscn")
	var textbox_instance = scene.instantiate()
	add_child(textbox_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
