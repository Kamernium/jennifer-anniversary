extends Area2D


@onready var rarity_obj = NPC.new()



func _ready() -> void:
	add_child(rarity_obj)
	rarity_obj.dialogue_name = "Rarity"


func _on_area_entered(area: Area2D) -> void:
	rarity_obj.interact = true
	



func _on_area_exited(area: Area2D) -> void:
	rarity_obj.interact = false
