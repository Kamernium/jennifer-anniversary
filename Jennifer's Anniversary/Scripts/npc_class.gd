extends Area2D

class_name NPC

var dialogue_name : String
var interact : bool = false



func _process(_delta: float) -> void:
	if interact == true:
		if Input.is_action_just_pressed("Entrarle"):
			Dialogic.start(dialogue_name)
