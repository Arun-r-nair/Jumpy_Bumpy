extends CanvasLayer




func _on_Button_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/LEVEL SELECTION.tscn")
