extends CharacterBody2D

@export var fly_speed := 300.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector(
		"fly_left",
		"fly_right",
		"fly_up",
        "fly_down"
	)

	velocity = direction * fly_speed
	move_and_slide()
