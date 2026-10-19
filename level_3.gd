extends Node2D


func _on_lava_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.die() 


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file("res://level_3_complete.tscn")
