extends Area2D


@onready var test2_obj = NPC.new()



func _ready() -> void:
	add_child(test2_obj)
	test2_obj.dialogue_name = "Test2"


func _on_area_entered(_area: Area2D) -> void:
	test2_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	test2_obj.interact = false
