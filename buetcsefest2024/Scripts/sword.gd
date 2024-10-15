extends Node3D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(!timer.is_stopped()):
		rotate_z(timer.time_left*delta*2)
		
	if (Input.is_action_just_pressed("attack")):
		if(timer.is_stopped()):
			timer.start()
		
		
		print("attack")



func _on_timer_timeout() -> void:
	timer.stop()
	print("done")
