extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("rotate_left"):
		#rotate by 90*
		position.y += 90
		
	if Input.is_action_just_pressed("rotate_right"):
		position.y -= 90
	pass
