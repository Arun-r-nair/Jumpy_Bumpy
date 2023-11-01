extends KinematicBody2D

var movement = Vector2()
var speed = 100
var moving_left = true


const GRAVITY = 32
const UP = Vector2.UP

onready var l_ray = $l_ray
  
func _physics_process(delta):
	if l_ray.is_colliding():
		moving_left = -moving_left
		scale.x = -scale.x
	
	move()


func move():
	movement.y += GRAVITY
	
	movement.x = -speed if moving_left else speed
	
	movement = move_and_slide(movement, UP)
