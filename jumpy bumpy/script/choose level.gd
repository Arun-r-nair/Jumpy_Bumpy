extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_level1_pressed():
	get_tree().change_scene("res://scenes/level01.tscn")





func _on_multiplayer_pressed():
	get_tree().change_scene("res://scenes/level02.tscn")


func _on_Back_pressed():
	get_tree().change_scene("res://scenes/start menu.tscn")
