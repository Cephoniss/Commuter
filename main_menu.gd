extends Node2D

@onready var menu_clear_clip = $SFX
@onready var timer = $Timer


func _ready():
	$CanvasLayer/Control/Start.button_up.connect(start)
	$CanvasLayer/Control/Quit.button_up.connect(quit)
	timer.wait_time = .7 #setting timeout time

func start():
	timer.start()
	menu_clear_clip.play()

func quit():
	get_tree().quit()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://world.tscn")
