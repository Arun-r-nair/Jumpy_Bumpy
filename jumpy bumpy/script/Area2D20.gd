extends Area2D



func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://scenes/CanvasLayer20.tscn")
