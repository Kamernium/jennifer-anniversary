extends Area2D


@onready var gato_mago_obj = NPC.new()



func _ready() -> void:
	add_child(gato_mago_obj)
	gato_mago_obj.dialogue_name = "GatoMago"


func _on_area_entered(_area: Area2D) -> void:
	gato_mago_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	gato_mago_obj.interact = false
