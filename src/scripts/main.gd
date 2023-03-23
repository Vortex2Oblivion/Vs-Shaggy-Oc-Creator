extends Node2D

@onready var color = $"Torso".modulate

func _process(_delta):
	$"Torso".modulate = Color8($"TorsoR".value as int,$"TorsoG".value as int,$"TorsoB".value as int)
	$"Legs".modulate = Color8($"PantsR".value as int,$"PantsG".value as int,$"PantsB".value as int)
