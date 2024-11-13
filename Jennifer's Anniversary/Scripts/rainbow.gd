extends Area2D


@onready var rainbow_obj = NPC.new()



func _ready() -> void:
	add_child(rainbow_obj)
	rainbow_obj.dialogue_name = "Rainbow"


func _on_area_entered(_area: Area2D) -> void:
	rainbow_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	rainbow_obj.interact = false
