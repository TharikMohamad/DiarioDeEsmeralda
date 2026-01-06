extends CharacterBody2D

@onready var remote_transform: RemoteTransform2D = $RemoteTransform2D

const SPEED : float = 250

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	var directionX := Input.get_axis("ui_left", "ui_right")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directionY := Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()
	
#func follow_camera(camera):
#	var camera_path = camera.get_path()
#	remote_transform.remote_path = camera_path
