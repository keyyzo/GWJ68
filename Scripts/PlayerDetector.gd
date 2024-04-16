class_name ItemPickup

extends Node2D

@export var PlayerDetector : Area2D

@export var item_move_speed : float = 100.0

func _on_player_detector_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		global_position = global_position.move_toward(body.global_position,item_move_speed)
		
		if global_position == body.global_position:
			queue_free()
