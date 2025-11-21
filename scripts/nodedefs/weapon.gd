class_name Weapon
extends Node3D

@export var weapon_name : String ## Weapon's shorthand name. (I.E: Glock, M1911)
@export var weapon_full_name : String ## Weapon's full name (I.E: Glock 18 Semi-Automatic Pistol, Colt Model M1911A1 Semi-Automatic Pistol)

@export_group("Visual Info")
@export var position_offset : Vector3 = Vector3.ZERO
@export var rotation_offset : Vector3 = Vector3.ZERO

@export_group("Ammo Info")
@export var ammo_reserve : int
@export var ammo_loaded : int

@export_group("Actions")
@export var primary_attack : Attack



# WEAPON STATES:
# FIRE : MAIN FIRE
# FIRE_ALT : ALTERNATE FIRING MODE
# RELOAD : SELF EXPLANATORY
# RAISE : WHEN THE WEAPON IS UNHOLSTERED
# LOWER : WHEN THE WEAPON IS HOLSTERED

signal weapon_fire
signal weapon_fire_alt
signal weapon_reload
signal weapon_raise
signal weapon_lower

# Called by parent WeaponController.
func weapon_action(action : String):
	match action:
		"FIRE":
			weapon_fire.emit()
		"FIRE_ALT":
			weapon_fire_alt.emit()
		"RELOAD":
			weapon_reload.emit()
		"RAISE":
			weapon_raise.emit()
		"LOWER":
			weapon_lower.emit()
