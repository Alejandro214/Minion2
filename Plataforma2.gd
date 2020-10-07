extends RigidBody2D


var peso = Vector2(0,10)



func _physics_process(delta):
	linear_velocity = Vector2(0,10)
	aumentar_pesar()




func aumentar_pesar():
	var y = get_parent().get_node("Plataforma").carga()
	peso.y = 10 *-y
