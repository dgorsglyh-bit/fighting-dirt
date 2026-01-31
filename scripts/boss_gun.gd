extends Node2D

var bullet_path = preload("res://scenes/bullet_2.tscn")

func _physics_process(delta: float) -> void:
	look_at(GlobalVars.player_pos)

func fire():
	if visible==true:
		var bullet=bullet_path.instantiate()
		bullet.dir = rotation
		bullet.pos = $Marker2D.global_position
		bullet.rota = global_rotation
		get_parent().add_child(bullet)


func _on_timer_timeout() -> void:
	fire()
	$Timer.start()
