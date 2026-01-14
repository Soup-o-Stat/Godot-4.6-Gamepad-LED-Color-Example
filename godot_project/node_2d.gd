extends Node2D

var device_id := 0

var colors := [
	Color(1, 0, 0),
	Color(0, 1, 0),
	Color(0, 0, 1),
	Color(1, 1, 0)]

var index := 0
var current_color : Color
var target_color  : Color

var fade_speed := 2

func _ready():
	current_color = colors[0]
	target_color = colors[1]

	Input.set_joy_light(device_id, current_color)

	var timer := Timer.new()
	timer.wait_time = 0.5
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)

func _process(delta):
	current_color = current_color.lerp(target_color, delta * fade_speed)
	Input.set_joy_light(device_id, current_color)

func _on_timer_timeout():
	index = (index + 1) % colors.size()
	target_color = colors[index]
