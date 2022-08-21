extends YSort

onready var number_remaining = get_children().size()
signal number_remaining_changed(number)

func _ready():
	dispatch_number_remaining(number_remaining)

func on_bat_dead():
	dispatch_number_remaining(number_remaining - 1)

func dispatch_number_remaining(number):
	number_remaining = number
	emit_signal("number_remaining_changed", number)
