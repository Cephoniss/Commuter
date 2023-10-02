extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("Collision with player")
		load_new_scene()

func load_new_scene():
	get_tree().change_scene_to_file("res://game_end_screen.tscn")
