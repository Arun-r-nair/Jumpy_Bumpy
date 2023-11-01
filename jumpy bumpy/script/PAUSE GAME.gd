extends CanvasLayer



	
func _on_RESTART_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/level01.tscn")


func _on_QUIT_TO_MENU_pressed():
	Global.points = 0
	get_tree().change_scene("res://scenes/MAIN MENU.tscn")



