extends Node

var background_music = load("res://Assets/SoundFX/Music/short_jazz.mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func play_music():
	$Music.stream = background_music
	$Music.play()

