extends HTTPRequest


func _ready():
	self.connect("request_completed", self, "connectAndCoins")

func connectAndCoins(result, response_code, headers, body):
	pass
	
func _on_Button_pressed():
	pass
