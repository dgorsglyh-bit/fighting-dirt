extends Node2D

var height = 3000
var width = 1000

var my_timer = Timer.new()

var enemy = preload("res://scenes/enemy.tscn")

func _ready() -> void:
	$Timer.start(3)


func _my_function():
	var nheight = randi_range(1, height)
	var nwidth = randi_range(0, width)
	var enemyScene = enemy.instantiate()
	enemyScene.position = Vector2(nwidth, nheight)
	add_child(enemyScene)


func _on_timer_timeout() -> void:
	_my_function()
	$Timer.start(3)



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://scenes/village.tscn")
