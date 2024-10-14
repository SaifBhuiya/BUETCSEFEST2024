extends Camera3D
var speed = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_parent().get_node("Path").get_child(0).get_node("PathFollower").get_child(0).remote_path = self.get_path()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:			
		
	
	if (Input.is_action_just_pressed("move_forward")):
		speed = 1
		self.fov += 2
	if (Input.is_action_just_pressed("move_back")):
		speed = 0
		self.fov -= 2
		
			
		
				
	if (Input.is_action_pressed("Right")):
		if(get_parent().get_node("Path").get_child(0).get_node("PathFollower").h_offset <= max):
			get_parent().get_node("Path").get_child(0).get_node("PathFollower").h_offset += 1
		
	if (Input.is_action_pressed("Left")):
		if( get_parent().get_node("Path").get_child(0).get_node("PathFollower").h_offset >= min):
			get_parent().get_node("Path").get_child(0).get_node("PathFollower").h_offset -= 1
	
	get_parent().get_node("Path").get_child(0).get_node("PathFollower").progress += speed
	print(speed)
	
#
#func _input(event):	
	#
	#if(event is InputEventMouseMotion):
		#
		#rotate_y(deg_to_rad(-event.relative.x * .1))
		#rotation.y = clamp (rotation.y,deg_to_rad(-15),deg_to_rad(15))
	
		
		
#func _on_whiplash_timeout() -> void:
	#self.fov = 75
	##speed = 0
	#pass # Replace with function body.
