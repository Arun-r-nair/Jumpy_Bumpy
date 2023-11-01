extends KinematicBody2D

var velocity = Vector2(0,0);
var SPEED = 200;
var JUMP_SPEED = 1100;
var GRAVITY = 50;

const UP = Vector2(0,-1);


func _ready():
  pass

func _process(delta):
	move()
	jump()
	apply_gravity()
	animate()
	

	move_and_slide(velocity,UP)
 
func move():
	if Input.is_action_pressed("LEFTMOVE") and not Input.is_action_pressed("RIGHTMOVE"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("RIGHTMOVE") and not Input.is_action_pressed("LEFTMOVE"):
		velocity.x = SPEED
	else:
		velocity.x = 0
func jump():
	if Input.is_action_just_pressed("JUMPUP") and is_on_floor():
		velocity.y =  - JUMP_SPEED
	if is_on_ceiling():
		velocity.y += GRAVITY*2

func apply_gravity():
	if not is_on_floor():
		velocity.y += GRAVITY
	
func animate():
	if velocity.y<0:
		$AnimatedSprite.play("jump")
	elif velocity.x !=0 and velocity.x>0:
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h=false
	elif velocity.x !=0 and velocity.x<0:
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h=true
	else:
		$AnimatedSprite.play("idle")

