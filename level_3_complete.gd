extends Node2D

func _on_menu_button_down() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
