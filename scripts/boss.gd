extends CharacterBody2D

var rb=0
var level = 1

var max_speed = 180
var move_velocity = Vector2.ZERO
var max_hp = 1000
var hp = max_hp

var dam = 10

var rubish = preload("res://scenes/rubbish.tscn")


func _process(delta: float) -> void:
	$rubish_bar.value = rb
	$CanvasLayer/Label.text = str(level)
	if rb == 100:
		level += 1
		rb -= 10
	var direction = get_direction_to_player()
	move_velocity = max_speed * direction
	self.velocity = move_velocity
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bullet1"):
		rb += 10
		body.queue_free()

func _ready() -> void:
	add_to_group("enemy")
	

func _spawn_rubish():
	var rubishScene = rubish.instantiate()
	rubishScene.position = position
	get_parent().add_child(rubishScene)

func get_direction_to_player():
	if GlobalVars.player_hp > 0:
		return (GlobalVars.player_pos - global_position).normalized()
	return Vector2.ZERO


func _on_hitbox_body_entered(body: Node2D) -> void:
	GlobalVars.player_hp -= dam
