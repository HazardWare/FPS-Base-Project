extends Node3D

@export var current_weapon : Weapon

func _physics_process(delta: float) -> void:
	# Primary Fire
	if Input.is_action_just_pressed("fire_primary"):
		current_weapon.weapon_action("FIRE")
