class_name PlayerState extends Node

@export var debug : bool = false

var player_controller : PlayerController3D


func _ready() -> void:
	# If parent is a state machine, set the player controller
	if %StateMachine and %StateMachine is PlayerStateMachine:
		player_controller = %StateMachine.player_controller
