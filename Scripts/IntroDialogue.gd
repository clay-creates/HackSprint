extends Label

# God forgive me for what I've done.
var full_text: String = "Modern Day. 

River Graves has been a private investigator for years. He's always been ahead of the 
technology curve, using the latest technology to solve his case. He's good. Too good.

He's an overworker, and unfortunatly has lead him to a lonely life. He had a wife and kids, 
but she left some time ago because he's too invested in his work. 

The last few months he's been assigned to the biggest case yet. A case that has taken 
over his entire life, and lead him to drinking to ease the pain and guilt of his past.

Last night, he discovered a huge clue that shook him to his core. To ease himself, 
he did what he's recently done to ease the pain. He hit the bar. 

This time he had too much..."
#var visible_characters: int = 0
#var visible_characters: int = 0
var text_speed: float = 0.0005  # Seconds between characters
var timer: Timer
var begin_button: Button

func _ready():
	text = ""
	begin_button = get_node("Begin")  # Adjust the path as necessary
	begin_button.visible = false  # Hide the button initially
	timer = Timer.new()  # Create a new Timer
	timer.wait_time = text_speed
	timer.one_shot = false  # If you want continuous effect without restarting the timer
	timer.connect("timeout", Callable(self, "_on_Timer_timeout"))  # Connect signal to function
	add_child(timer)  # Add the Timer to the Label node
	timer.start()  # Start the timer

func _on_Timer_timeout():
	if visible_characters < full_text.length():
		visible_characters += 1
		text = full_text.substr(0, visible_characters)
	else:
		timer.stop()  # Stop the timer when all text has been displayed
		begin_button.visible = true
