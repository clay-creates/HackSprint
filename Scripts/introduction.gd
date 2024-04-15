extends Node2D

func _ready():
	RainFx.play_rainfx()

func _on_begin_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_room.tscn")

