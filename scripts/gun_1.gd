extends Node2D

var bullet_path = preload("res://scenes/bullet_1.tscn")

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("f"):
		fire()

func fire():
	if visible==true:
		if GlobalVars.exp>0:
			var bullet=bullet_path.instantiate()
			bullet.dir = rotation
			bullet.pos = $CharacterBody2D/Node2D.global_position
			bullet.rota = global_rotation
			get_parent().add_child(bullet)
			GlobalVars.exp-=1
