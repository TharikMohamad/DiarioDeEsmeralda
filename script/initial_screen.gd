extends Control


var initial_button: bool = false
@onready var initial_screen: Control = $InitialScreen
@onready var human_side: Control = $HumanSide

var character_data := {
	"class": ""
}

func _ready() -> void:
	$InitialScreen.visible = true
	$HumanSide.visible = false
	human_side.class_selected.connect(on_class_selected)

func _process(_delta: float) -> void:
	if initial_button:
		_on_initial_button_pressed()

func _on_initial_button_pressed() -> void:
	$InitialScreen.visible = false
	$HumanSide.visible = true

func on_class_selected(classes: String):
	character_data["class"] = classes

func _on_confirm_button_pressed() -> void:
	$HumanSide.visible = false
	print(character_data)
	get_tree().change_scene_to_file("res://scene/player.tscn")
