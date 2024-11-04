extends Area2D


@onready var gato2_obj = NPC.new()



func _ready() -> void:
	add_child(gato2_obj)
	gato2_obj.dialogue_name = "Gato2"


func _on_area_entered(area: Area2D) -> void:
	gato2_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	gato2_obj.interact = false
