extends Area2D

@onready var red_obj = NPC.new()



func _ready() -> void:
	add_child(red_obj)
	red_obj.dialogue_name = "Red"


func _on_area_entered(area: Area2D) -> void:
	red_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	red_obj.interact = false
