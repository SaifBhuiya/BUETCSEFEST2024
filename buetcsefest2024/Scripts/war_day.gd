extends Node2D
var eventno=0
const KAAL_DIES = preload("res://Audio/Kaal Dies.mp3")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match eventno:
		0:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "KAAL"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "You Coward!! Ambushing me??? I am Lord KAAAAAL!!"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
		1:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
			if(Trust.Trust>50):
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]You call it cowardice. I call it strategy.[/i]"
			else:
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Whatever keeps my kingdom from your hands[/i]"
			
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
		2:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "KAAL"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "THIS WILL BE THE END OF YOU!!!!! FEAR ME!!!!!"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
		3:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
			if(Trust.Trust>50):
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Fear? You?? I think you are underestimating me KAAL![/i]"
			else:
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i].....You are intimidating but I dont have any other options. Do I?[/i]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
	
		4: 
			
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Options/Kaal").visible = true
			if(Trust.Trust>50):
				get_node("Options/Kaal/A").text = "ATTACK (brave choice)"
				get_node("Options/Kaal/B").text = "BARGAIN (coward choice)"
			else:
				get_node("Options/Kaal/A").text = "ATTACK"
				get_node("Options/Kaal/B").text = "BARGAIN"
		5:
			get_node("Kaal").stop()
			if(get_node("Kaal Dies").playing == false):
				get_node("Kaal Dies").play()
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Options/Kaal").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "KAAL"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = ".....Maybe I did underestimate you.You are as brave as your Father. You Win... I.....I.......lose"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
			#WON
		6:
			get_node("Kaal").stop()
			if(get_node("Kaal Dies").playing == false):
				get_node("Kaal Dies").play()
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Options/Kaal").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "KAAL"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Arghhh, A sneak attack. You...you made me bleed. You're the first. You Win.....I..... "
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
			#LOST
		7:	
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/Character/Kaal").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]~KAAL CAPTURED~[/b]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
		8:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/Character/Kaal").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]~KAAL DIES~[/b]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
		9:
			get_node("Background/Prison cell").visible = true
			get_node("Background/Kaal's Kingdom").visible = false	
			get_node("Characters_Dialogues/Character/Prisoner").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]We have defeated Kaal[/i]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
		10:
			eventno+= 6
		11:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I guess now that Thermos is dead and Kaal has been defeated, I'll be left alone here to rot. Why don't you just kill me"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
		13:
			get_node("Options/Prisoner Release").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = false
		14:
			if(Input.is_action_just_pressed("attack")):
						eventno+= 2
		15:
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
			
		16:
			get_tree().change_scene_to_file("res://Scenes/outro.tscn")
			
			
	print(eventno)
					
			


func _on_a_pressed() -> void:
	Trust.gainTrust(5)
	eventno += 1


func _on_b_pressed() -> void:
	Trust.loseTrust(5)
	eventno += 2


func _on_kill_pressed() -> void:
	get_node("Characters_Dialogues/DialogueUI").visible = true
	get_node("Options/Prisoner Release").visible = false
	get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
	get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I will grant you your wish[/i]"
	if(Input.is_action_just_pressed("attack")):
		eventno+= 2
	


func _on_release_pressed() -> void:
	get_node("Characters_Dialogues/DialogueUI").visible = true
	get_node("Options/Prisoner Release").visible = false
	get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = ""
	get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I have decided to release you from prison. You are a free citizen to my Kingdom now. I have prepared a room for you to live in.[/i]"
	if(Input.is_action_just_pressed("attack")):
		eventno+= 2
