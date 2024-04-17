extends Control

@export var iron_label : Label
@export var bronze_label : Label
@export var gold_label : Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	iron_label.text = "Iron Amount: " + str(Global.Player.iron_counter)
	bronze_label.text = "Bronze Amount: " + str(Global.Player.bronze_counter)
	gold_label.text = "Gold Amount: " + str(Global.Player.gold_counter)
