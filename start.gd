extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if GlobalVars.minigames_completed >= 4 or GlobalVars.lives <= 0:
		GlobalVars.lives = 5
		GlobalVars.minigames_completed = 0
	get_tree().change_scene_to_file("res://level_scene.tscn")
	pass # Replace with function body.
