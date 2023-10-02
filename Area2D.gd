extends Area2D

@onready var timer = $"../Timer2"
@onready var clear_sfx_clip = $"../SFX"

func _ready():
	timer.wait_time = .5
	
func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Collision with player")
		timer.start()
		clear_sfx_clip.play()
		

# Function for loading new scene
func load_new_scene():
	get_tree().change_scene_to_file("res://world_3.tscn")

func _on_timer_2_timeout():
	load_new_scene()
