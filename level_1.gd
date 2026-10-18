extends Node2D

@export var death_y: float = 460.0 
@onready var player: CharacterBody2D = $Player

func _physics_process(delta: float) -> void:
	if player and player.global_position.y > death_y:
		player.die()

func _on_entrance_cave_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://level_1_complete.tscn")
