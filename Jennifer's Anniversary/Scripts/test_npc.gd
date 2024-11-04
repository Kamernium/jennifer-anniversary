extends Area2D

@onready var Test_obj = NPC.new()

func _ready() -> void:
	add_child(Test_obj)
	Test_obj.dialogue_name = "Test1"


func _on_area_entered(area: Area2D) -> void:
	Test_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	Test_obj.interact = false
