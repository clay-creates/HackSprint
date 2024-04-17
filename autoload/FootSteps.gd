extends Node


var foot_steps = load("res://Assets/SoundFX/Effects/Wood_Footsteps.wav")


func _ready():
	pass
	play_footsteps()

func play_footsteps():
	$FootSteps.stream = foot_steps
	$FootSteps.play()
