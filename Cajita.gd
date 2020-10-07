extends RigidBody2D


var direction = Vector2.UP
var levitacion 

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		print("estoy flotando")
		apply_central_impulse(10000 * weight_player())
	else:
		print("deje de flotar")	

#func _integrate_forces(state):
#	if Input.is_action_just_pressed("ui_up"):
#		apply_central_impulse(direction * weight_player())
#	elif Input.is_action_just_pressed("ui_right"):
#		 var dir = Vector2() - weight_player()
#		 apply_impulse(Vector2(),dir)	

func weight_player():
	return Vector2()


func _on_Area2D_body_entered(body):
	 levitacion = body.get_name() == "Player"
		
