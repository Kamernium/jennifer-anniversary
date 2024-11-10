extends Node

func jump():
	get_tree().change_scene_to_file("res://Escenas/velada_romantica.tscn")

func end():
	get_tree().change_scene_to_file("res://Escenas/interruption.tscn")

func Monika():
	get_tree().change_scene_to_file("res://Escenas/just_monika.tscn")

func MonikaEnd():
	get_tree().change_scene_to_file("res://Escenas/finale.tscn")

func _ready() -> void:
	pass # Replace with function body.
