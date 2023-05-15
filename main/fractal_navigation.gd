class_name FractalNavigation
extends ColorRect

onready var cam: Camera = get_node("Viewer/Camera")

func _process(_delta) -> void:
	material.set_shader_param("cam_pos", cam.global_translation)
	material.set_shader_param("cam_mat", cam.global_transform.basis)
	material.set_shader_param("width", get_viewport().size.x)
	material.set_shader_param("height", get_viewport().size.y)
