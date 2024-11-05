extends Area2D


@onready var vaporeon_obj = NPC.new()



func _ready() -> void:
	add_child(vaporeon_obj)
	vaporeon_obj.dialogue_name = "Vaporeon"


func _on_area_entered(area: Area2D) -> void:
	vaporeon_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	vaporeon_obj.interact = false
