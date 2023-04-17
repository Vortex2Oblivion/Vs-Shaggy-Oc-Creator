extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root".size=Vector2(650,350)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_pressed():
	$ChromaticScale.play()
