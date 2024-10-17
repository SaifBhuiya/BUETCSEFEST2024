extends Node2D
var eventno = 0;
var index ;
@onready var kaalsmessenger: AudioStreamPlayer2D = $"../Kaalsmessenger"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	index = get_node("Characters_Dialogues/Council").index
	match eventno:
		#Advisor intro
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "King Thermos has breathed his last. You are now the rightful king of this Kingdom."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Day Announcement
		1:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]~FIRST DAY AS KING~[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Advisor tutorial
		2:		
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My King, your first case is here. Make sure you find out the best possible judgement otherwise people will lose trust in you"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		
		#Case Announcement	
		3:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]CASE 1 - The Missing Chicken[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Chicken Lady 1st
		4: 
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "The thief stole my chicken"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Thief 1st
		5:
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = false
			get_node("Characters_Dialogues/Character/Thief").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "No I didn't. She's lying...I have never been to her chicked farm. In fact I've been sleeping all morning today"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Chicken Lady 2nd
		6: 
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = true
			get_node("Characters_Dialogues/Character/Thief").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "He has been eyeing my chickens for 2 days now and today He stole one of them."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Thief 2nd
		7:
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = false
			get_node("Characters_Dialogues/Character/Thief").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Both of her chickens are still in her farm. She probably ate the third."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		#Investigate/Punish Action screen
		8:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = false
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = true
			get_node("Characters_Dialogues/Character/Chicken Lady").position = Vector2(-300, 0)
			get_node("Characters_Dialogues/Character/Thief").visible = true
			get_node("Characters_Dialogues/Character/Thief").position = Vector2(300, 0)
			get_node("Buttons/Investigate").visible = true
			get_node("Buttons/Punish").visible = true
			eventno += 1
		9:
		
			pass
			
		10:
			get_node("Characters_Dialogues/Character/Chicken Lady").visible = false
			get_node("Characters_Dialogues/Character/Thief").visible = false
			get_node("Buttons/PunishA").visible = false
			get_node("Buttons/PunishB").visible = false
			get_node("Buttons/Done").visible = false
			
			
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]CASE 2 - Wild Coyote[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		11:
			get_node("Characters_Dialogues/Character/Farmer's Daughter").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer's Daughter"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Wild Coyotes have been attacking our farm"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		12:
			get_node("Characters_Dialogues/Character/Farmer's Daughter").visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My King, you can appoint one of your council members to look into this matter."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		13:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Picking the right council member is crucial. Look at their fields of expertise and then choose accordingly"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		14:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Each council member will handle the scenario in different ways. Your choices might have consequences."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		15:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I personally think we should tame the coyotes. Don't know how long it might take but they might come in handy"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		16:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Astrologer").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "According to my prediction, the Doctor will have the highest chance of success in this."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		17:
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			get_node("Characters_Dialogues/Character/Doctor").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Doctor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I can make a coyote repellant to drive the coyotes away"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		18:
			get_node("Characters_Dialogues/Character/Doctor").visible = false
			get_node("Characters_Dialogues/Character/Jester").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Jester"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I can gather more info about why the farm is being attacked and act accordingly."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		19:
			get_node("Characters_Dialogues/Character/Jester").visible = false
			get_node("Characters_Dialogues/Character/Warrior").visible = true
			
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Give me the orders and I'll send my men to hunt the coyotes down immediately"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		20:
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = false
			get_node("Characters_Dialogues/Council").visible = true
			
			match get_node("Characters_Dialogues/Council").index:
				0:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Advisor").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'll immediately get to work"
					
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(2)
						eventno += 1
					
				1:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Astrologer").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "The coyote issue will be taken care of. On another note I can sense danger approaching. Something big is coming"
					
					get_node("Characters_Dialogues/Council").visible = false
				
					if(Input.is_action_just_pressed("attack")):
						
						Trust.gainTrust(3)
						eventno += 1
				2:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Doctor").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Doctor"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'll start making the coyote repellant"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(5)
						eventno += 1
				3:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Jester").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Jester"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I will get on it"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.loseTrust(3)
						eventno += 1
				4:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Warrior").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Consider the job Done"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(1)
						eventno += 1
		21:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			get_node("Characters_Dialogues/Character/Doctor").visible = false
			get_node("Characters_Dialogues/Character/Jester").visible = false
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			
	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]CASE 3 - Robbers in the Wood[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		22:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/Character/Gold Seller").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Gold Seller"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I need Help. Where's King Thermos?? I have been robbed"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		23:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Father is no more. As the new crowned king I will be taking care of your problem[/i]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		24:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "You?..... you are a mere kid!! Is there no one else...? sigh.."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		25:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I'll try my best to solve your issue[/i]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		26:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I dont need you to try. I need you catch those robbers and put them in cells"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		27:	
			get_node("Characters_Dialogues/Character/Gold Seller").position = Vector2(-300, 0)
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(300, 0)
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "May I remind you that you are infront of the current King so act accordingly"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		28:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Gold Seller"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "umm....I may have acted a bit out of order."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		29:
			get_node("Characters_Dialogues/Character/Gold Seller").position = Vector2(0, 0)
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(0, 0)
			
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I had gone to the next village for some business. On my way back through the forest I got jumped by some hooded robbers."
			if(Input.is_action_just_pressed("attack")):
				get_node("Characters_Dialogues/Character/Gold Seller").visible = false
				eventno += 1
		30:
			if(index!=0):
				get_node("Characters_Dialogues/Character/Advisor").visible = true
				get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "We should lay a trap to capture the robbers while they least expect it."
				if(Input.is_action_just_pressed("attack")):
					eventno += 1
			else:
				eventno += 1
		31:	
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			if(index!= 1):
				
				get_node("Characters_Dialogues/Character/Astrologer").visible = true
				get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Currently the only thing on my mind is the danger that I sense, Its getting close."
				if(Input.is_action_just_pressed("attack")):
					eventno += 1
			else:
				eventno += 1
		32:
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			if(index!=2):
				
				get_node("Characters_Dialogues/Character/Doctor").visible = true
				get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Doctor"
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I can make a gas bomb to smoke out the robbers from the forest."
				if(Input.is_action_just_pressed("attack")):
					eventno += 1
			else:
				eventno += 1
		33:
			get_node("Characters_Dialogues/Character/Doctor").visible = false
			if(index!=3):
				
				get_node("Characters_Dialogues/Character/Jester").visible = true
				get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Jester"
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I can infiltrate their band and drive them towards a trap"
				if(Input.is_action_just_pressed("attack")):
					eventno += 1
			else:
				eventno += 1
		34:
			get_node("Characters_Dialogues/Character/Jester").visible = false
			get_node("Characters_Dialogues/Council").index = 99
			if(index!=4):
				
				get_node("Characters_Dialogues/Character/Warrior").visible = true
			
				get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
				get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "We'll use force to bring the robbers to justice"
				if(Input.is_action_just_pressed("attack")):
					eventno += 1
			else: 
				eventno +=1
		
		35:
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = false
			get_node("Characters_Dialogues/Council").visible = true
			
			match get_node("Characters_Dialogues/Council").index:
				0:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Advisor").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'll immediately get to work"
					
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(3)
						eventno += 1
					
				1:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Astrologer").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = ".........Send anyone else but, you might need Advisor close to you for whats to come"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						eventno += 1
				2:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Doctor").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Doctor"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'll start making the smoke bomb"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.loseTrust(3)
						eventno += 1
				3:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Jester").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Jester"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I will get on it"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(5)
						eventno += 1
				4:
					get_node("Characters_Dialogues/Council").visible = false
					get_node("Characters_Dialogues/Character/Warrior").visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
					get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Warrior"
					get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Consider the job Done"
					
					get_node("Characters_Dialogues/Council").visible = false
					if(Input.is_action_just_pressed("attack")):
						Trust.gainTrust(1)
						eventno += 1
		36:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			get_node("Characters_Dialogues/Character/Doctor").visible = false
			get_node("Characters_Dialogues/Character/Jester").visible = false
			get_node("Characters_Dialogues/Character/Warrior").visible = false
			
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Guard"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "An unknown person has come to see you"
			
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		37:
			get_node("Characters_Dialogues/Character/Astrologer").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Astrologer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Danger.... It's...it's Here!"
			if(kaalsmessenger.playing==false):
				kaalsmessenger.play()
				get_node("Start Main").stop()
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
			
		38:
			
			get_node("Characters_Dialogues/Character/Kaal's Messenger").visible = true
			get_node("Characters_Dialogues/Character/Astrologer").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "??????"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Hello my dear boy. Lord Kaal says sorry for your loss."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		39:
			get_node("Characters_Dialogues/Character/Kaal's Messenger").position = Vector2(-300,0)
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(300,0)
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Kaa.. Kaaal??"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		40:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Kaal's ???????"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'm his messenger."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		41:
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(0,0)
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Kaal's Messenger"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Lord Kaal has sent me to issue you a warning. Give up your Palace and Kingdom within the next 3 days, Or he shall have to force it out of your hands."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1		
		42:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Kaal's Messenger"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I'll leave you with that for now."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1	
		43:
			kaalsmessenger.stop()
			if(get_node("Main").playing == false):
				get_node("Main").play()
			get_node("Characters_Dialogues/Character/Kaal's Messenger").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Who's Kaal? You seemed terrified when his name was said[/i]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1	
		44:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My Lord! Long Before you were born, Our Kingdom was attacked by the Dark Lord \"Kaal\"."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1	
		45:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Your Father being the brave warrior he was, managed to defeat Kaal's Army. Kaal surrendered and a treaty was formed."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		46:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "What people don't know is that Our kingdom is built on top of the Gateway to Hell."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		47:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Kaal wants to Open that gate and take over the world."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		48: 
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I'll need to get to the bottom of this.[/i]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		49:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]COURT CLOSED[/b]"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1

		50:
			get_tree().change_scene_to_file("res://Scenes/level_2.tscn")	
			
			


func _on_investigate_pressed() -> void:
	
	get_node("Buttons/QuestionsL").visible = true
	get_node("Buttons/QuestionsR").visible = true
	get_node("Buttons/Investigate").visible = false
	get_node("Buttons/Punish").visible = false
	get_node("Buttons/Done").visible = true
	


func _on_punish_pressed() -> void:
	get_node("Buttons/Investigate").visible = false
	get_node("Buttons/Punish").visible = false
	get_node("Buttons/Done").visible = true
	get_node("Buttons/PunishA").visible = true
	get_node("Buttons/PunishB").visible = true


func _on_questions_l_item_selected(index: int) -> void:
	match index:
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "The chicken was stolen today in the Afternoon."
			print(index)
		1:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Chicken Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I own 3 three chicken one of which got stolen today. So now I have 2 left in the farm"


func _on_questions_r_item_selected(index: int) -> void:
	match index:
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "As I said before. I have been sleeping all Afternoon"
		1:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Thief"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Ummm.......... It was a guess. Did I say three? I meant four or five..."


func _on_done_pressed() -> void:
	eventno = 8
	get_node("Buttons/QuestionsL").visible = false
	get_node("Buttons/QuestionsR").visible = false
	get_node("Buttons/PunishA").visible = false
	get_node("Buttons/PunishB").visible = false

	get_node("Buttons/Done").visible = false


func _on_punish_a_pressed() -> void:
	
	Trust.loseTrust(5)
	print(Trust.Trust)
	eventno +=1


func _on_punish_b_pressed() -> void:
	
	Trust.gainTrust(5)
	print(Trust.Trust)
	eventno +=1
