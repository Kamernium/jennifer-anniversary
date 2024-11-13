extends Area2D


@onready var spike_obj = NPC.new()



func _ready() -> void:
	add_child(spike_obj)
	spike_obj.dialogue_name = "Spike"


func _on_area_entered(_area: Area2D) -> void:
	spike_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	spike_obj.interact = false
