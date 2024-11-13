extends Area2D


@onready var fluttershy_obj = NPC.new()



func _ready() -> void:
	add_child(fluttershy_obj)
	fluttershy_obj.dialogue_name = "Fluttershy"


func _on_area_entered(_area: Area2D) -> void:
	fluttershy_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	fluttershy_obj.interact = false
