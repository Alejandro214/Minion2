extends RigidBody2D


var  carga = 0 

func _physics_process(delta):
	linear_velocity = Vector2(0,10)
	

	
  


func _on_Area2D_body_entered(body):
	if body.get_name() == "Cajita":
		carga +=1
		
		
func carga():
	return carga		


