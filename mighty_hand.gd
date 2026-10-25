extends CharacterBody2D

@export var fly_speed := 300.0
@export var boost_speed := 700.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector(
		"fly_left",
		"fly_right",
		"fly_up",
        "fly_down"
	)

	var current_speed := fly_speed

	if Input.is_key_pressed(KEY_CTRL):
		current_speed = boost_speed

	velocity = direction * current_speed
	move_and_slide()
