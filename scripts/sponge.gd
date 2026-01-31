extends CharacterBody2D

@export var speed = 600
var gun = false
var gun1 = false

func _ready() -> void:
	add_to_group("player")

func player():
	pass

func _process(delta: float) -> void:
	$CanvasLayer/Label.text = str(GlobalVars.exp)
	$CanvasLayer/hp_bar.value= GlobalVars.player_hp
	if GlobalVars.player_hp <= 0:
		queue_free()

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	GlobalVars.player_pos = global_position


func _on_button_pressed() -> void:
	$gun1.visible=false
	$gun.visible=true

func _on_button_1_pressed() -> void:
	$gun.visible=false
	$gun1.visible=true
