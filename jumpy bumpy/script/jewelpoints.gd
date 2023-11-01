extends Node2D
var coin

func _on_Area2D_body_entered(body):
	if "player" in body.name:
		Global.points = Global.points + 10
		$AnimationPlayer.play("gained")
		$Area2D/CollisionShape2D.disabled = true
		coin = Global.points
		Global.isUpdated = true
		print_debug(Global.isUpdated)


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
