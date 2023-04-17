extends Node2D


func _process(_delta):
	$"Torso".modulate = Color8($"TorsoR".value as int,$"TorsoG".value as int,$"TorsoB".value as int)
	$"Legs".modulate = Color8($"PantsR".value as int,$"PantsG".value as int,$"PantsB".value as int)
	$Head.play(str($"HeadSlider".value))

func _on_quit_pressed():
	get_tree().change_scene_to_file("res://src/scenes/title_scene.tscn")

func _on_button_pressed():
	$"/root".size=Vector2(350,750)
	$ScreenshotTimer.start()

func _on_screenshot_timer_timeout():
	var image = get_viewport().get_texture().get_image()
	image.save_png("res://shaggy_oc.png")
	$ResetWindowSize.start()

func _on_reset_window_size_timeout():
	$"/root".size=Vector2(650,750)

