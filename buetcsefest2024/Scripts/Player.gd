extends Camera3D

@export var mouse_sensitivity = 0.05
@export var walk_speed = 5.0
@export var run_speed = 8.0
@export var jump_force = 5.0
@export var gravity = -9.8

var velocity = Vector3.ZERO
var speed = walk_speed

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * mouse_sensitivity))
		rotation.x = clamp(rotation.x - deg_to_rad(event.relative.y * mouse_sensitivity), 
						   deg_to_rad(-89), 
						   deg_to_rad(89))
	
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _physics_process(delta):
	# Add gravity
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# Handle jumping
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force
	
	# Handle running
	if Input.is_action_pressed("run"):
		speed = run_speed
	else:
		speed = walk_speed
	
	# Get input direction
	var input_dir = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	
	# Calculate movement direction
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	
	# Apply movement
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)
	
	# Move the camera
	global_translate(velocity * delta)
	
	# Simple floor check (you might want to use raycasts for more precise detection)
	if global_position.y < 0:
		global_position.y = 0
		velocity.y = 0

func is_on_floor():
	return global_position.y <= 0
