extends Node2D

@onready var spikes: Area2D = $Spikes
@onready var leprechaun: CharacterBody2D = $Leprechaun
@onready var mighty_hand: CharacterBody2D = $"Mighty Hand"

var leprechaun_start: Vector2
var mighty_hand_start: Vector2


func _ready() -> void:
	leprechaun_start = leprechaun.global_position
	mighty_hand_start = mighty_hand.global_position

	spikes.body_entered.connect(_on_spikes_body_entered)


func _on_spikes_body_entered(body: Node2D) -> void:
	if body == leprechaun:
		leprechaun.global_position = leprechaun_start
		leprechaun.velocity = Vector2.ZERO

	elif body == mighty_hand:
		mighty_hand.global_position = mighty_hand_start
		mighty_hand.velocity = Vector2.ZERO
