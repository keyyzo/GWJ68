class_name ItemPickup

extends Node2D

@export var PlayerDetector : Area2D

@export var item_move_speed : float = 400.0

var can_move : bool = false

func _physics_process(delta: float) -> void:
	if can_move == true:
		move_to_player(Global.Player.global_position, delta)

func _on_player_detector_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		can_move = true
			
			
func move_to_player(temp_player_pos : Vector2, delta):
	global_position = global_position.move_toward(temp_player_pos,item_move_speed * delta)
	
	if global_position == Global.Player.global_position:
		if name.contains("Iron"):
			Global.Player.iron_counter += 1
			print("Total Iron: ",Global.Player.iron_counter)
		if name.contains("Bronze"):
			Global.Player.bronze_counter += 1
			print("Total Bronze: ",Global.Player.bronze_counter)
		if name.contains("Gold"):
			Global.Player.gold_counter += 1
			print("Total Gold: ",Global.Player.gold_counter)
		queue_free()

