extends Button


#

func _on_Button2_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/level01.tscn")
