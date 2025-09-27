extends CharacterBody2D
var speed = 7000
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left"):
		velocity.x = -1  * speed
	elif Input.is_action_pressed("right"):
		velocity.x = speed
	else :
		velocity.x = 0
	if not is_on_floor():
		velocity.y+=90
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= 4000	
	move_and_slide()


	pass
