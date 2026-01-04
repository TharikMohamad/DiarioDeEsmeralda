extends Control

func _on_initial_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/create_character.tscn")
