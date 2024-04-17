extends Node


var note_found = load("res://Assets/SoundFX/Effects/Paper_Sound.wav")


func _ready():
	pass

func play_paper():
	$NoteFound.stream = note_found
	$NoteFound.play()

