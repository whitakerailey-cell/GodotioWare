extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var gravity := 50
signal playerhit

func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity.y += gravity * delta
	velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	if position.y >= 510:
		queue_free()
	if get_slide_collision_count() >= 1:
		emit_signal("playerhit")
		pass
