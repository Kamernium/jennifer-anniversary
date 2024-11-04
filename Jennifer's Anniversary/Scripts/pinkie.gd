extends Area2D


@onready var pinkie_obj = NPC.new()



func _ready() -> void:
	add_child(pinkie_obj)
	pinkie_obj.dialogue_name = "Pinkie"


func _on_area_entered(area: Area2D) -> void:
	pinkie_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	pinkie_obj.interact = false
