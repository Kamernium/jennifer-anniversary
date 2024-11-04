extends Area2D

@onready var gato4_obj = NPC.new()



func _ready() -> void:
	add_child(gato4_obj)
	gato4_obj.dialogue_name = "Gato 4"


func _on_area_entered(area: Area2D) -> void:
	gato4_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	gato4_obj.interact = false
