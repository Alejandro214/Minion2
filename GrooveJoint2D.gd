extends GrooveJoint2D




func _input(event):
	if event.is_action_pressed("ui_up"):
		set_length(100000000)
		
func _ready():
	pass

func _process(delta):
	set_length(0)
	set_initial_offset(0)
	length = 1000000
	linear2db(100000000)
