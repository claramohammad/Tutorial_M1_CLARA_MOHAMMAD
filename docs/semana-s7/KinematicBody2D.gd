extends KinematicBody2D



func _physics_process(delta):
	var movimento = Vector2.ZERO
	movimento.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	movimento.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(movimento*100)
	#para movimentar a tartaruga

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://ganhou.tscn")
