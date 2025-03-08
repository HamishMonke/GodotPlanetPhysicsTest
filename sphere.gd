extends RigidBody3D

func _process(delta: float) -> void:
	if position.x <= -2.15:
		linear_velocity = Vector3(1, 0 ,0)
	elif position.x >= 2.15:
		linear_velocity = Vector3(-1, 0 ,0)
