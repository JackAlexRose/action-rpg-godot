extends Control

onready var label = $Label
var number_remaining = 0

func _ready():
	label.text = "Bats remaining: " + str(number_remaining)

func _on_enemies_remaining_changed(number):
	number_remaining = number
	if label:
		label.text = "Bats remaining: " + str(number_remaining)
