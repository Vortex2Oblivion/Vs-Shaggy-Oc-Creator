extends Node2D


var playback

func _process(delta):
	$"ChromaticScale".pitch_scale = $"Pitch".value

func _ready():
	$"/root".size=Vector2(650,350)

	
func _on_play_button_pressed():

	playback = $ChromaticScale.stream

	$ChromaticScale.play()


func _on_save_pressed():
	$ChromaticScale.play()
	playback = $ChromaticScale.stream
	playback.save_to_wav("res://chromatic.wav")
