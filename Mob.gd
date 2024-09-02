extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	# $AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	var animation = mob_types.pick_random()
	$AnimatedSprite2D.animation = animation
	$AnimatedSprite2D.play()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	
