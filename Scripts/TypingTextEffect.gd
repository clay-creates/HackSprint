extends Dialogue

# The text to display using the typing effect.
var story_text = "Modern Day.\n
	\n
	<Character Name> Has been a private investigator for years. He's always been ahead of the technology curve, using\n
	the latest technology to solve his case. He's good. Too good.\n
	\n
	He's an overworker, and unfortunately has led him to a lonely life. He had a wife and kids, but she left some time ago\n
	because he's too invested in his work.\n
	\n
	The last few months he's been assigned to the biggest case yet. A case that has taken over his entire life, and\n
	led him to drinking to ease the pain and guilt of his past.\n
	\n
	Last night, he discovered a huge clue that shook him to his core. To ease himself, he did what he's recently done to\n
	ease the pain. He hit the bar. This time he had too much...\n"
# This function scrolls text with a typewriter effect.

var typing_speed = .1
var read_time = 2

var current_message = 0
var display = ""
var current_char = 0

func _ready():
	# Start the typing effect when the node is ready.
	start_dialogue()

func start_dialogue():
	current_message = 0
	display = ""
	current_char = 0
	
	$next_char.set_wait_time(typing_speed)
	$next_char.start()

func stop_dialogue():
	queue_free()

func _on_next_char_timeout():
	if (current_char < len(story_text[current_message])):
		var next_char = story_text[current_message][current_char]
		display += next_char
		
		$Label.text = display
		current_char += 1
	else:
		$next_char.stop()
		$next_message.one_shot = true
		$next_message.set_wait_time(read_time)
		$next_message.start()

func _on_next_message_timeout():
	if (current_message == len(story_text) - 1):
		stop_dialogue()
	else: 
		current_message += 1
		display = ""
		current_char = 0
		$next_char.start()
	
	
