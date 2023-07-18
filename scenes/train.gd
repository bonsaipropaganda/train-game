extends StaticBody2D

var move = false
var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if move:
		self.position.x += speed * delta


func _on_check_button_toggled(button_pressed: bool) -> void:
	if move == false:
		move = true
	else:
		move = false


func _on_button_pressed() -> void:
	$TrainBed.print_cargo()
