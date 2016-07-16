extends RigidBody2D

var player
var ray
var speed
var bodies
var ground
var jumpheight

func _ready():
	set_process(true)

	speed = 1500
	jumpheight = 600
	bodies = get_colliding_bodies()
	ray = get_node ("RayCast2D")

func on_ground():
	return ray.is_colliding()

func _process(delta):

	if Input.is_action_pressed("ui_left"):
		set_axis_velocity(Vector2(-speed,0))

	if Input.is_action_pressed("ui_right"):
		set_axis_velocity(Vector2(speed,0))

	if on_ground():
		if Input.is_action_pressed("ui_up"):
			set_axis_velocity(Vector2(0,-jumpheight))

	if Input.is_action_pressed("ui_down"):
		set_axis_velocity(Vector2(0,jumpheight))
