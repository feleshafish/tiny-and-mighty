
extends Area2D

@export var next_scene: PackedScene

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Leprechaun":
		if next_scene:
			get_tree().change_scene_to_packed(next_scene)
