extends Node2D


var playback

func _ready():
	$"/root".size=Vector2(650,350)

	
func _on_play_button_pressed():

	playback = $ChromaticScale.stream

	$ChromaticScale.play()


func _on_save_pressed():

	playback = $ChromaticScale.stream
	playback.save_to_wav("res://chromatic.wav")
