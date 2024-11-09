extends CharacterBody2D


const SPEED = 700
const JUMP_VELOCITY = -700.0
var can_interact : bool = false



var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _physics_process(delta):
	

	if can_interact == true:
		$CanvasLayer/Label.set_visible(true)
		
	else:
		$CanvasLayer/Label.set_visible(false)
	
	
	
	if not is_on_floor():
		velocity.y += gravity * delta
		if Input.is_action_just_released("Saltar"):
			velocity.y += 15000 * delta
		if Input.is_action_pressed("ui_down"):
			velocity.y += 25000 * delta 
			

	



	if Input.is_action_just_pressed("Saltar") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var movement = Input.get_axis("ui_left","ui_right")
	
	if movement:
		velocity.x = SPEED * movement
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	




	move_and_slide()


func _on_interaction_area_entered(_area: Area2D) -> void:
	can_interact = true


func _on_interaction_area_exited(_area: Area2D) -> void:
	can_interact = false
