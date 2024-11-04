extends Area2D

@onready var gato1_obj = NPC.new()



func _ready() -> void:
	add_child(gato1_obj)
	gato1_obj.dialogue_name = "Gato1"


func _on_area_entered(area: Area2D) -> void:
	gato1_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	gato1_obj.interact = false
