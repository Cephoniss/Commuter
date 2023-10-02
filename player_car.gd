extends CharacterBody2D

@export var speed = 500
@export var rotation_speed = 3

var rotation_direction = 0

func get_input():
	rotation_direction = Input.get_axis("input_left", "input_right")
	velocity = transform.y * Input.get_axis("input_down", "input_up") * speed

func _physics_process(delta):
	get_input()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
