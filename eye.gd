extends Area2D

@export var speed: float = 100.0
@export var move_distance: float = 150.0

var start_position: Vector2
var direction: int = 1

func _ready() -> void:
	start_position = global_position
	body_entered.connect(_on_body_entered)
	
func _process(delta: float) -> void:
	position.x += speed * direction * delta
	
	if abs(position.x - start_position.x) >= move_distance:
		direction *= -1

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player" or body.is_in_group("player"):
		get_tree().reload_current_scene()
