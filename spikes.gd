extends Area2D

@export var leprechaun_path: NodePath = ^"../Leprechaun"
@export var mighty_hand_path: NodePath = ^"../Mighty Hand"

var leprechaun_start: Vector2
var mighty_hand_start: Vector2

@onready var leprechaun: CharacterBody2D = get_node_or_null(leprechaun_path)
@onready var mighty_hand: CharacterBody2D = get_node_or_null(mighty_hand_path)


func _ready() -> void:
	if leprechaun:
		leprechaun_start = leprechaun.global_position

	if mighty_hand:
		mighty_hand_start = mighty_hand.global_position

	body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node2D) -> void:
	if body == leprechaun:
		leprechaun.global_position = leprechaun_start
		leprechaun.velocity = Vector2.ZERO

	elif body == mighty_hand:
		mighty_hand.global_position = mighty_hand_start
		mighty_hand.velocity = Vector2.ZERO
