extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/Quit.button_up.connect(quit)

func quit():
	get_tree().quit()
