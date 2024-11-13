extends Area2D
var can_enter : bool = false



func _on_area_entered(_area: Area2D) -> void:
	can_enter = true


func _on_area_exited(_area: Area2D) -> void:
	can_enter = false
	

func _process(_delta: float) -> void:
	if can_enter == true:
		if Input.is_action_just_pressed("Entrarle"):
			get_tree().change_scene_to_file("res://Escenas/pokemon_world.tscn")
