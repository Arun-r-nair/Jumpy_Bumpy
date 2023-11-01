extends Area2D





func _on_Area2D_body_entered(body: PhysicsBody2D):
	get_tree().change_scene("res://scenes/you win.tscn")
