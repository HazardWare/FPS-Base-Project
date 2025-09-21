class_name PlayerStateMachine extends Node


@export var debug : bool = false

@export_category("Node References")
@export var player_controller : PlayerController3D

func _process(_delta: float) -> void:
	if player_controller:
		player_controller.state_chart.set_expression_property(
			"Player Velocity",
			roundf(player_controller.velocity.length())
		)
		player_controller.state_chart.set_expression_property(
			"Player Bonk?",
			player_controller.crouch_check.is_colliding()
		)
		player_controller.state_chart.set_expression_property(
			"Whatcha lookin at?",
			player_controller.interaction_raycast.current_object
		)
