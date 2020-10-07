extends StaticBody2D

var puede_Pasar = false

export (PackedScene) var level_2 

export (PackedScene) var level_3

export (PackedScene) var level_4


func _input(event):
	if event.is_action_pressed("ui_up"):
		puede_Pasar = true

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player" && puede_Pasar:
		next_level()





func next_level():
	var current_level = owner.get_name()
	if current_level == "Nivel 1":
		get_tree().change_scene_to(level_2)
	elif current_level == "Nivel 2":
		get_tree().change_scene_to(level_3)
	else:
		get_tree().change_scene_to(level_4)	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
