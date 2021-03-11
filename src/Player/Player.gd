extends "res://src/Base.gd"

func control(delta):
	control_camera()
	
	var rotationDirection = 0
	if Input.is_action_pressed("turn_left"):
		rotationDirection -= 1
	if Input.is_action_pressed("turn_right"):
		rotationDirection += 1
	rotation += rotationSpeed * rotationDirection * delta
	velocity = Vector2()
	if Input.is_action_pressed("forward"):
		velocity = Vector2(speed, 0).rotated(rotation)
	if Input.is_action_pressed("backward"):
		velocity = Vector2(-speed/2, 0).rotated(rotation)

func control_camera():
	var mouse = get_global_mouse_position()
	
	$Lodong.look_at(mouse)
	
	$Lodong.rotation = clamp($Lodong.rotation, deg2rad(0), deg2rad(90))
