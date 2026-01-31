extends CharacterBody2D

var max_speed = 450
var move_velocity = Vector2.ZERO
var hp = 100

var rubish = preload("res://scenes/rubbish.tscn")

func _ready() -> void:
	pass

func _process(delta):
	var direction = get_direction_to_player()
	move_velocity = max_speed * direction
	self.velocity = move_velocity
	move_and_slide()
	$hpbar.value=hp
	if hp <= 0:
		die()

func die():
	call_deferred("_spawn_rubish")
	queue_free()

func _spawn_rubish():
	var rubishScene = rubish.instantiate()
	rubishScene.position = position
	get_parent().add_child(rubishScene)

func get_direction_to_player():
	if GlobalVars.player_hp > 0:
		return (GlobalVars.player_pos - global_position).normalized()
	return Vector2.ZERO

func _on_area_2d_body_entered(body: Node2D) -> void:
	GlobalVars.player_hp -= 10
