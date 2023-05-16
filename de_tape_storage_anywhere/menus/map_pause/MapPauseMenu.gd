extends "res://menus/map_pause/MapPauseMenu.gd"

onready var new_tape_storage_button = tape_storage_button.duplicate()

func _ready():
	add_tape_button_again()

func add_tape_button_again():
	tape_storage_button = new_tape_storage_button
	buttons.add_child(tape_storage_button)
	buttons.move_child(tape_storage_button, 2)
	buttons.setup_focus()
