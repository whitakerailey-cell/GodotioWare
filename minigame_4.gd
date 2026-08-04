extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer 
# ^^^ You dragged this in the scene by the way 

var timer_end = false # boolean (true or false) stating whether the timer ended

func _ready() -> void:
	await themed_timer.Timer(10.0) #accessing a function from this node
	#after this is compeleted...
	timer_end = true # now we're saying "oh ye you ran out of time"
	
		#Below you can see that I have a function that I named. I grab a 
		#function from it that was created in it's script and use `await` to 
		# tell the script to wait for a signal, or for when a function finshes

func _process(delta: float) -> void: # running every frame brochacho
	if timer_end: # the double equals is just an argument asking if it's the same, with "=" it'll give an error
			GlobalVars.minigames_completed -= 1
			GlobalVars.lives -= 1
			get_tree().change_scene_to_file("res://level_scene.tscn") # go back to the intermission scene


func _on_area_2d_body_entered(body: Node2D) -> void:
	GlobalVars.minigames_completed += 1
	if GlobalVars.minigames_completed > 4: # we access a global script and see how many minigames have been compeleted
		get_tree().change_scene_to_file("res://win_screen.tscn") # change current play scene into another, but you make your own finish screen in a later challenge, dont worry abt this rn
	else:
		get_tree().change_scene_to_file("res://level_scene.tscn")
