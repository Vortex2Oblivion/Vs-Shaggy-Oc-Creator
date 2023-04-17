extends Control

func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://src/scenes/main.tscn")


func _on_audio_editor_pressed():
	get_tree().change_scene_to_file("res://src/scenes/chromscale.tscn")
