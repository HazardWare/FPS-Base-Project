extends Weapon


func _on_weapon_fire() -> void:
	$AnimationPlayer.play("fire")
