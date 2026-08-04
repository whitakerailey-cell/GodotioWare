extends Node2D
@onready var bug: Sprite2D = $Bug 
var direction := 1

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if self.global_position.x <= 250:
		direction = 1
	if self.global_position.x >= 950:
		direction = -1
	self.global_position.x += 10 * direction
	bug.flip_v = direction < 0
	pass
