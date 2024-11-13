extends Area2D


@onready var twilight_obj = NPC.new()



func _ready() -> void:
	add_child(twilight_obj)
	twilight_obj.dialogue_name = "Twilight"


func _on_area_entered(_area: Area2D) -> void:
	twilight_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	twilight_obj.interact = false
