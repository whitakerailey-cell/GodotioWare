extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	freeze_mode = FREEZE_MODE_STATIC
	freeze = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		freeze = false
		apply_central_impulse(Vector2(0,800))
	if position.y >= 500:
		position.y = 250
		position.x = 546
		freeze = true
	pass
