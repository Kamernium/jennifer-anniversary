extends Area2D


@onready var gato_pregunton_obj = NPC.new()



func _ready() -> void:
	add_child(gato_pregunton_obj)
	gato_pregunton_obj.dialogue_name = "GatoPregunton"


func _on_area_entered(_area: Area2D) -> void:
	gato_pregunton_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	gato_pregunton_obj.interact = false
