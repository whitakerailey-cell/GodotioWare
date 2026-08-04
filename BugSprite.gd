extends CharacterBody2D

signal playerwashit

func _physic_process(_delta:float) -> void:
	velocity = Vector2(0, 30)
	var collision = move_and_collide(velocity)
	if collision:
		pass

func _on_area_2d_body_entered(body):
	if (body.name == "Player"):
		emit_signal("playerwashit")
		queue_free()
