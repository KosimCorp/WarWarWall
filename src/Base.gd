extends KinematicBody2D

export (int) var speed
export (float) var rotationSpeed
export (float) var lodongCooldown
export (int) var health

var velocity = Vector2()
var isAlive = true

func control(delta):
	pass

func _physics_process(delta):
	if  !isAlive:
		return
	control(delta)
	move_and_slide(velocity)
