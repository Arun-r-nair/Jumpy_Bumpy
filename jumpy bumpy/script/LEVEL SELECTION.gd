extends CanvasLayer



func _on_LEVEL_1_pressed():
	get_tree().change_scene("res://scenes/level01.tscn")


func _on_MULTIPLAYER_pressed():
	get_tree().change_scene("res://scenes/level02.tscn")


func _on_BACK_pressed():
	get_tree().change_scene("res://scenes/MAIN MENU.tscn")


func _on_LEVEL_2_pressed():
	get_tree().change_scene("res://scenes/level03.tscn")
