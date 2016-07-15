extends Node2D


var player
var speed

func _ready():
	set_process(true)
	player = get_node("Player")
	speed = 55000

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		player.set_axis_velocity(Vector2(-speed,0)*delta)
	
	if Input.is_action_pressed("ui_right"):
		player.set_axis_velocity(Vector2(speed,0)*delta)

	if Input.is_action_pressed("ui_up"):
		player.set_axis_velocity(Vector2(0,-20000)*delta)

	if Input.is_action_pressed("ui_down"):
		player.set_axis_velocity(Vector2(0,20000)*delta)