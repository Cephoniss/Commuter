extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/TextAndButtons/Restart.button_up.connect(restart)
	$CanvasLayer/TextAndButtons/Quit.button_up.connect(quit)


func restart():
	get_tree().change_scene_to_file("res://world.tscn")

func quit():
	get_tree().quit()
