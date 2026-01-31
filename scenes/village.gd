extends Node2D

func _ready() -> void:
	$babka/anim.play("sad")

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://scenes/boss_fight.tscn")


func _on_button_2_pressed() -> void:
	$babka/Button2/Sprite2D.visible=false
	$babka/Sprite2D.visible=true
	$babka/Label.visible=false
	$babka/Label2.visible=true
	$babka/anim.play("happy")
	$babka/Label.queue_free()
	GlobalVars.exp+=100


func _on_button_pressed() -> void:
	if $babka/Label != null:
		$babka/Label.visible = true



func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://scenes/boss_fight.tscn")
