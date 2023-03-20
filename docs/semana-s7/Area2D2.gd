extends Area2D


var vel = -125
func _ready():
	set_process(true)
	
func _process(delta):
	set_position(get_position() + Vector2(vel * delta, 0))
	#para movimentar os obstaculos

func _on_Area2D2_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	get_tree().change_scene("res://Perdeu.tscn")
	#para mostar tela de "perdeu"


func _on_Area2D6_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	get_tree().change_scene("res://Perdeu.tscn")
	#para mostar tela de "ganhou"
