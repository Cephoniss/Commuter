extends CanvasLayer

@onready var label = $Label
@onready var timer = $"../Timer"

func _ready():
	label.visible = true
	timer.wait_time = 3
	timer.start()
	print("Timer started")
	

func _on_timer_timeout():
	label.visible = false
	print("Timer timeout - hiding label")
