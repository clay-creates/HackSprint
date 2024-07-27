extends Node


var intro_count = 0
var vent_click = 0
var pillow_click = 0
var cabinet_click = 0
var oven_click = 0
var fruit_click = 0
var main_room_one = 0
var main_room_two = 0
var letters_found = 0
var allfinished = 0

func reset():
	intro_count = 0
	vent_click = 0
	pillow_click = 0
	cabinet_click = 0
	oven_click = 0
	fruit_click = 0
	main_room_one = 0
	main_room_two = 0
	letters_found = 0
	allfinished = 0

func track_intro_dialogue():
	intro_count += 1
	if intro_count == 1:
		track_letters_found()

func track_vent_click():
	vent_click += 1
	if vent_click == 1:
		track_letters_found()


func track_pilliow_click():
	pillow_click += 1
	if pillow_click == 1:
		track_letters_found()


func track_cabinet_click():
	cabinet_click += 1
	if cabinet_click == 1:
		track_letters_found()


func track_oven_click():
	oven_click += 1
	if oven_click == 1:
		track_letters_found()


func track_fruit_click():
	fruit_click += 1
	if fruit_click == 1:
		track_letters_found()

func track_mainone_click():
	main_room_one += 1
	if main_room_one == 1:
		track_letters_found()

func track_maintwo_click():
	main_room_two += 1
	if main_room_two == 1:
		track_letters_found()


func track_letters_found():
	letters_found += 1
	print (letters_found)
	if letters_found == 7:
		allfinished += 1
		get_tree().change_scene_to_file("res://Scenes/main_room.tscn")

