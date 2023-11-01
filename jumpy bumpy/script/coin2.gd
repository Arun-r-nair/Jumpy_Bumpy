extends Area2D




func _on_coin2_body_entered(body: Node) -> void:
	queue_free()
	Global.update_coin(1)
	
