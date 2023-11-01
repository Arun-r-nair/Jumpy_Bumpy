extends Area2D
 
var entered = false





func _on_Area2D5_body_entered(body):
	entered = true


func _on_Area2D5_body_exited(body):
	entered = false


func _process(delta):
	if entered == true:
		if  Input.is_action_just_pressed("pause"):
			get_tree().change_scene("res://scenes/PAUSE2.tscn")


