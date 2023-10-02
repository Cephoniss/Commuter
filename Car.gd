extends Area2D

@onready var oof_sound_clip = $"../OofSoundClip"
@onready var timer = $"../Timer"

func _ready():
	timer.wait_time = .3
	
func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Collision with player")
		oof_sound_clip.play()
		timer.start()
# Function for loading new scene
func game_over():
	get_tree().change_scene_to_file("res://game_over.tscn")


func _on_timer_timeout():
	game_over()
