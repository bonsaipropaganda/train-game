extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func print_cargo():
	for body in $CargoDetection.get_overlapping_bodies():
		body.reparent(self)


func _on_cargo_detection_body_exited(body: Node2D) -> void:
	print(body.name + " exited")
	var body_parent = body.get_parent().name
#	if body_parent == "TrainBed":
#		body.reparent(get_parent().get_parent())
#		print(body.get_parent().name)
