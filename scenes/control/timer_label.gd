extends Label

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = "Time: " + str(time)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	$Timer.start()
	time += 1
	self.text = "Time: " + str(time)


func _on_start_button_pressed() -> void:
	$Timer.start()


func _on_done_button_pressed() -> void:
	$Timer.stop()
