extends Node2D
var eventno = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match eventno:
		0:
			get_node("CanvasLayer2/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "King Thermos has breathed his last. You are now the rightful king of this Kingdom."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
			
		1:
			get_node("CanvasLayer2/Character/Advisor").visible = false
			get_node("CanvasLayer2/DialogueUI").get_child(0).visible = false
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "       [b]~FIRST DAY AS KING~[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		2:
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "       [b]CASE 1[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		3: 
			#Add a womans picture her .visible = true
			get_node("CanvasLayer2/DialogueUI").get_child(0).visible = true
			get_node("CanvasLayer2/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "The thief stole my chicken."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		4:
			#Woman invisible
			#Thied visible
			get_node("CanvasLayer2/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "No I didn't. Both of her chickens are still in the farm..."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		5: 
			get_node("CanvasLayer2/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "He has been eyeing my chickens for 2 days now and today He stole one of them."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		6:
			get_node("CanvasLayer2/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("CanvasLayer2/DialogueUI").get_child(1).get_child(0).text = "If I had to steal why would i steal one? I would have stolen all 3 of them."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		7:
			get_node("CanvasLayer2/DialogueUI").get_child(0).visible = false
			get_node("CanvasLayer2/DialogueUI").get_child(1).visible = false
			
			
			
			
