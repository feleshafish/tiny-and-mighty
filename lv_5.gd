extends Node2D

@onready var spikes: Area2D = $Spikes
@onready var leprechaun: CharacterBody2D = $Leprechaun
@onready var mighty_hand: CharacterBody2D = $"Mighty Hand"

var leprechaun_start: Vector2
var mighty_hand_start: Vector2


func _ready() -> void:
# Save both starting positions.
	leprechaun_start = leprechaun.global_position
	mighty_hand_start = mighty_hand.global_position

# Detect when either character touches the spikes.
	spikes.body_entered.connect(_on_spikes_body_entered)


func _on_spikes_body_entered(body: Node2D) -> void:
# If either character dies, reset BOTH.
	if body == leprechaun or body == mighty_hand:
		reset_both_characters()


func reset_both_characters() -> void:
# Reset the Leprechaun.
	leprechaun.global_position = leprechaun_start
	leprechaun.velocity = Vector2.ZERO

# Reset the Mighty Hand.
	mighty_hand.global_position = mighty_hand_start
	mighty_hand.velocity = Vector2.ZERO

func _on_spike_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
