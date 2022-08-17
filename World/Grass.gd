extends Node2D

var GrassEffect = preload("res://Effects/GrassEffect.tscn")

func _process(delta):
	if Input.is_action_just_pressed("attack"):
		var grassEffect = GrassEffect.instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free()
