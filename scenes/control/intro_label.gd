extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_button_pressed() -> void:
	self.visible = true
	self.text = "Stack the boxes on the train!"
	$Timer.start()


func _on_timer_timeout() -> void:
	print("timeout")
	self.text = ""
	self.visible = false
	$Timer.stop()
