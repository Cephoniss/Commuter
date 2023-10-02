extends Area2D

@onready var oof_sound_clip = $"../OofSoundClip"
@onready var timer = $"../Timer"

func _ready():
	timer.wait_time = .3 #setting timeout time

func _on_body_entered(body):
	if body.is_in_group("Player"):
		oof_sound_clip.play() #playing sound on collisions
		print("Collision with player") #debug print to console
		timer.start() #starting timer
# Function for loading new scene
func game_over():
	get_tree().change_scene_to_file("res://game_over.tscn") #changes scene to game_over scene



func _on_timer_timeout():
	game_over() #after the timer times out we run the game_over function
