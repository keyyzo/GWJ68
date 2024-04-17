## pick up mechanic when near item/goods. 
class_name PlayerController

extends CharacterBody2D


@export var base_speed : float = 300.0
@export var acceleration : float = 50.0
@export var deceleration : float = 65.0


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("exit"):
		get_tree().quit()

func _physics_process(delta: float) -> void:
	
	# Movement inputs
	
	var input_vector = Vector2(Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
							Input.get_action_strength("move_down") - Input.get_action_strength("move_up"))
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity += input_vector * acceleration
		velocity = velocity.limit_length(base_speed)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, deceleration)
	
	move_and_slide()
	
	
