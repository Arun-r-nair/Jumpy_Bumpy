extends CanvasLayer




func _on_Button_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/level03.tscn")

func _on_Button2_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/LEVEL SELECTION.tscn")
