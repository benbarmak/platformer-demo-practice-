extends Node2D

func _ready():
	set_process(true)
	var player = get_node("Player")

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		player.set_axis_velocity(Vector2(-4,0))

