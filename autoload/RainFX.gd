extends Node

var background_rain = load("res://Assets/SoundFX/Effects/Dark_Rainy_Night(ambience).ogg")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func play_rainfx():
	$RainSound.stream = background_rain
	$RainSound.play()
