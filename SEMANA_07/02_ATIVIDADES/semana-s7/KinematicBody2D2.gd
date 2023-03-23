extends KinematicBody2D


var vel = -100
func _ready():
	set_process(true)
	
func _process(delta):
	set_position(get_position() + Vector2(vel * delta, 0))


