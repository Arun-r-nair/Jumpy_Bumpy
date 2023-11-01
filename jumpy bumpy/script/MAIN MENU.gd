extends CanvasLayer


func _on_START_pressed():
	get_tree().change_scene("res://scenes/LEVEL SELECTION.tscn")



func _on_OPTIONS_pressed():
	get_tree().change_scene("res://scenes/OPTIONS.tscn")



func _on_QUIT_pressed():
	OS.shell_open("https://localhost/jbwebgame/userlogout.php")
