extends Control


var initial_button: bool = false
@onready var initial_screen: Control = $InitialScreen
@onready var create_character: Control = $CreateCharacter
@onready var human_side: Control = $HumanSide

func _ready() -> void:
	$CreateCharacter.visible = false
	$InitialScreen.visible = true
	$HumanSide.visible = false

func _process(delta: float) -> void:
	if initial_button:
		_on_initial_button_pressed()

func _on_initial_button_pressed() -> void:
	$InitialScreen.visible = false
	$CreateCharacter.visible = true

func _on_human_pressed() -> void:
	$CreateCharacter.visible = false
	$HumanSide.visible = true
