extends RigidBody2D

@onready var anim = $anim


func _ready():
	var enemy_types = anim.sprite_frames.get_animation_names()
	anim.play(enemy_types[randi() % enemy_types.size()])

func _process(delta):
	pass
func _on_visible_screen_exited():
	queue_free()
