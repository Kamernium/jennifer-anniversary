extends Area2D

@onready var gato3_obj = NPC.new()



func _ready() -> void:
	add_child(gato3_obj)
	gato3_obj.dialogue_name = "Gato3"


func _on_area_entered(area: Area2D) -> void:
	gato3_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	gato3_obj.interact = false
