extends Node2D

func _ready():
	print("Playing Animation")
	$AnimationPlayer.play("Fade In")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("Fade Out")
	await get_tree().create_timer(3).timeout
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://introduction.tscn")
