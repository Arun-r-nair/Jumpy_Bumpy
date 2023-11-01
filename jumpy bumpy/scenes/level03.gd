extends Node2D


var score
var time = 0
var coin
var isUpdated


func _physics_process(delta: float) -> void:
	time+=delta*10
	score ="%05d"%[time]
	coin = str(Global.points)
	$"CanvasLayer/Label".text=coin
	isUpdated = Global.isUpdated
	if isUpdated:
		var headers = ["Content-Type: application/json"]
		var user = "evil"
		var coin = Global.points
		var url = "http://127.0.0.1:8000/update/" + str(user) + "/" + str(coin)
		$HTTPRequest.request(url, headers, HTTPClient.METHOD_GET)
		Global.isUpdated = false
	
