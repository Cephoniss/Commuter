extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_vector("input_left", "input_right","input_up","input_down")
	if direction:
		velocity.x = direction.x * SPEED
		velocity.y = direction.y * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	#flip sprite based on direction
	if direction.x != 0: 
		$Sprite2D.scale.x = abs($Sprite2D.scale.x) * sign(direction.x)
	#if direction.y != 0:  
		#$Sprite2D.scale.y = abs($Sprite2D.scale.y) * sign(direction.y)



