extends Node2D
var eventno=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match eventno:
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Our soldiers are ready for whats to come my King. We just need your orders"
			get_node("Characters_Dialogues/DialogueUI").visible = true
			
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		1:
			
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "We should attack at Night, they wont be be expecting us to attack first"
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			get_node("Characters_Dialogues/Character/Astrologer").visible = true
			get_node("CanvasLayer/Choices").visible = true
			
			
		2:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Jester"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I think I can Infiltrate the enemy base by evening and send useful information back"
			get_node("Characters_Dialogues/Character/Jester").visible = true
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			get_node("CanvasLayer/Choices").visible = true
		
		3: 
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Doctor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My team is ready to support wounded soldiers"
			get_node("Characters_Dialogues/Character/Jester").visible = false
			get_node("Characters_Dialogues/Character/Doctor").visible = true
			get_node("CanvasLayer/Choices").visible = false
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		4:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "If you want we can Attack now"
			get_node("Characters_Dialogues/Character/Doctor").visible = false
			get_node("Characters_Dialogues/Character/Warrior").visible = true
			get_node("CanvasLayer/Choices").visible = false
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		5:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "King I think its wiser to wait for intel before attacking"
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("CanvasLayer/Choices").visible = false
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		6:	
			get_node("Characters_Dialogues/Character/Warrior").visible = true
			get_node("Characters_Dialogues/Character/Warrior").position = Vector2(300,0)
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(-300,0)
			get_node("CanvasLayer/Choices").visible = true
			get_node("CanvasLayer/Choices/A").text = "Wait for Jester"
			get_node("CanvasLayer/Choices/B").text = "Attack Now"
		7:
			get_tree().change_scene_to_file("res://Scenes/war_day.tscn")
		
			
			


func _on_a_pressed() -> void:
	Trust.gainTrust(5)
	eventno += 1




func _on_b_pressed() -> void:
	Trust.loseTrust(5)
	eventno += 1
