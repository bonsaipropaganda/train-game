extends CharacterBody2D


var selected = false

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if !Input.is_action_pressed("mb_left"):
		selected = false
	else: selected = true

func _physics_process(delta: float) -> void:
	move_and_slide()
	# gravity logic
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# pick up logic
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)
