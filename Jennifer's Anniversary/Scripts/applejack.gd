extends Area2D


@onready var applejack_obj = NPC.new()



func _ready() -> void:
	add_child(applejack_obj)
	applejack_obj.dialogue_name = "Applejack"


func _on_area_entered(_area: Area2D) -> void:
	applejack_obj.interact = true
	



func _on_area_exited(_area: Area2D) -> void:
	applejack_obj.interact = false
