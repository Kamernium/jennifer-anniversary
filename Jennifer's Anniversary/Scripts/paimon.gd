extends Area2D


@onready var paimon_obj = NPC.new()



func _ready() -> void:
	add_child(paimon_obj)
	paimon_obj.dialogue_name = "Paimon"


func _on_area_entered(area: Area2D) -> void:
	paimon_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	paimon_obj.interact = false
