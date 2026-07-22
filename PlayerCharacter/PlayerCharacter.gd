extends Node3D
class_name PlayerCharacter

var move_distance = 1.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("move_right"):
		position.x += move_distance
		print("Pressed D")
	
	if Input.is_action_just_pressed("move_left"):
		position.x -= move_distance
		print("Pressed A")
		
	if Input.is_action_just_pressed("move_up"):
		position.z -= move_distance # forward
		print("Pressed W")
		
	if Input.is_action_just_pressed("move_down"):
		position.z += move_distance # backward
		print("Pressed S")
	pass
	
