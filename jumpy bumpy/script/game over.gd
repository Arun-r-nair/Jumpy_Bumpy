extends CanvasLayer



func _on_RESTART_pressed():
	get_tree().change_scene("res://scenes/level03.tscn")


func _on_QUIT_TO_MENU_pressed():
	get_tree().change_scene("res://scenes/MAIN MENU.tscn")
