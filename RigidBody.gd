extends RigidBody3D

@onready var Sphere: RigidBody3D = get_parent().get_node("Planet")

var gravity: float = 0.1

func _physics_process(delta: float) -> void:
	var global_position_offset = global_transform.origin - Sphere.global_transform.origin
	global_transform = Sphere.global_transform
	global_transform.origin += global_position_offset

	apply_central_impulse(-GetUpDirection() * gravity)

func GetUpDirection() -> Vector3:
	var dir: Vector3 = (global_transform.origin - Sphere.global_transform.origin).normalized()
	return dir if dir != Vector3.ZERO else Vector3.UP
