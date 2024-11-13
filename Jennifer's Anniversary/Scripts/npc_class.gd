extends Area2D

class_name NPC

var dialogue_name : String
var interact : bool = false
var can_press : bool = true



func _process(_delta: float) -> void:
	#Esta parte detecta si se esta reproduciendo algçun diálogo, y si es el caso la tecla "Entrarle" no reproducirá el diálogo desde el principio por accidente
	if Dialogic.Text.is_textbox_visible():
		can_press = false
	else:
		can_press = true
	if interact == true:
		if can_press == true:
			if Input.is_action_just_pressed("Entrarle"):
				Dialogic.start(dialogue_name)
