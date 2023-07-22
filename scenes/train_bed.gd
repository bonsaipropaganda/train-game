extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func print_cargo():
	for body in $CargoDetection.get_overlapping_bodies():
		body.reparent(get_parent())
