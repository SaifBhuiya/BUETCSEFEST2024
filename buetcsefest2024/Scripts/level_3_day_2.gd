extends Node2D
var eventno = 0 
var playground = 0
var gate = 0
var mom_room = 0
var prison_cell = 0
var sleep = 0
@onready var chicken: AudioStreamPlayer2D = $chicken

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Characters_Dialogues/Council").reset()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(sleep == 10):
		#get_tree().change_scene_to_file("res://Scenes/level_3_day_2.tscn")
		pass
	match eventno:
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[b]DAY TWO ~ 3 Days till Kaal Attacks[/b]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
		1:  
			get_node("Characters_Dialogues/Character/Advisor").visible = true	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My King! The Coyote Problem has been taken care of."
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		2: 
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "About Kaal.... What actions should we take?"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		3: 
			get_node("Buttons/Kaal").visible = true
		4:
			
			get_node("Buttons/Kaal").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "That does seems like the best course of action at this time. Should I suspend the court today?"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		5:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]No, I dont want people to panic. I am not stopping justice because of a threat.[/i]"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		6:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "You've started speaking like King Thermos. It's almost like..... he never left."
			if(Input.is_action_just_pressed("attack")):
						eventno += 1	
		7:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "       [b]CASE 4 - Farmer's Paradise[/b]"
			if(chicken.playing == false):
				chicken.play()
				get_node("Main").stop()
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		8:
			get_node("Characters_Dialogues/Character/Farmer").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Sir King, Please help me!!! My Crops arent growing..... I will starve to death sir"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		9:
				
			get_node("Buttons/Questions").visible = true
		10:
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		11:
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
			get_node("Buttons/Questions").visible = false
			
		12:	
			get_node("Characters_Dialogues/Character/Farmer").position = Vector2(-300,0)
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(300,0)
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Did you just commit to the crime of stealing?"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		13:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Crime..?? Stealing..??? No. I don't steal. I ask neighbour's cow for permission if it says moo I take otherwise not"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		14:
			get_node("Characters_Dialogues/Character/Farmer").position = Vector2(0,0)
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Advisor").position = Vector2(0,0)
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Buttons/GOLD").visible = true
			get_node("Buttons/PUNISH").visible = true
			
			
			
			
		15:
			chicken.stop()
			if(get_node("Main").playing == false):
				get_node("Main").play()
			get_node("Buttons/GOLD").visible = false
			get_node("Buttons/PUNISH").visible = false
			get_node("Characters_Dialogues/Character/Farmer").visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Sir we caught the Hooded Robbers and have called the Gold Seller back"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		16:
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/hoodedRobbers").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Hooded Robbers"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "King! I know what we do is wrong but we are helpless"
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		17:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Hooded Robbers"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "We only prey on greedy scums like the gold seller. He gives out loans to naive villagers and then charges high interest"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		18:	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Hooded Robbers"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "People unable to repay the loan lose their livelihood. He takes away their land, boat, farm..... everything."
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		19: 
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Hooded Robbers"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "We have lost everything to people like him and are now living a pathetic life full of sins"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1			
		20:
			get_node("Characters_Dialogues/Character/hoodedRobbers").position = Vector2 (-300,0)
			get_node("Characters_Dialogues/Character/Gold Seller").visible = true
			get_node("Characters_Dialogues/Character/Gold Seller").position = Vector2(300,0)
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Gold Seller"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "If you take loan, you have to repay it. Should have thought about that before taking a loan"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		21: 
			
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Buttons/Robbers").visible = true
		22:
			get_node("Buttons/Robbers").visible = false
			get_node("Characters_Dialogues/Character/Gold Seller").visible = false
			get_node("Characters_Dialogues/Character/hoodedRobbers").visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible =true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Thats all the cases for Today my king, You should take rest now. Your Mother will be coming back tomorrow"
			if(Input.is_action_just_pressed("attack")):
				eventno += 1
		23:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[b]DAY THREE ~ 2 Days till Kaal Attacks[/b]"
			if(Input.is_action_just_pressed("attack")):
						eventno+= 1
		24:
			get_node("Characters_Dialogues/Character/Advisor").visible = true	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Advisor"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Your Mother is here. You can go meet her now."
			if(Input.is_action_just_pressed("attack")):
						eventno += 1
		25:
			get_tree().change_scene_to_file("res://Scenes/level_4_day3.tscn")
			
			
			
			
	match prison_cell:
		1:
			get_node("Background/Corridor to dungeon/PristoCourt").visible = false
			get_node("Background/Corridor to dungeon/Enter Prison").visible = false
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I've never been here before. This might lead to the gate that I was told about[/i]"
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		2:
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Background/Corridor to dungeon/PristoCourt").visible = true
			get_node("Background/Corridor to dungeon/Enter Prison").visible = true
			prison_cell += 1
		#Talking to Prisoner
		3:
			pass
		4:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/Character/Prisoner").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Thermos? Is that you? You didn't come meet me yesterday my dear child"
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		5: 
			pass
			
	
			
#COURTROOM
func _on_outside_pressed() -> void:
	get_node("Background/Playground").visible = true
	get_node("Background/Court").visible = false
	
		


func _on_corridor_pressed() -> void:
	get_node("Background/Moms room").visible = true
	get_node("Background/Court").visible = false


func _on_prison_cells_pressed() -> void:
	get_node("Background/Corridor to dungeon").visible = true
	get_node("Background/Court").visible = false
	
	
#CORRIDOR



func _on_courtroom_pressed() -> void:
	get_node("Background/Court").visible = true
	get_node("Background/Moms room").visible = false
	


func _on_moms_room_pressed() -> void:
	get_node("Background/Mom's Room").visible = true
	get_node("Background/Moms room").visible = false



func _on_my_room_pressed() -> void:
	get_node("Background/Corridor 2").visible = true
	get_node("Background/Moms room").visible = false


func _on_sleep_pressed() -> void:
	#Logic for scene change
	pass
	


func _on_moms_cor_pressed() -> void:
	get_node("Background/Moms room").visible = true
	get_node("Background/Corridor 2").visible = false
	
	


func _on_backfrommomroom_pressed() -> void:
	get_node("Background/Mom's Room").visible = false
	get_node("Background/Moms room").visible = true

#FRONT FIELD
func _on_main_gate_pressed() -> void:
	get_node("Background/Main Gate").visible = true
	get_node("Background/Playground").visible = false
	


func _on_courtfrompg_pressed() -> void:
	get_node("Background/Court").visible = true
	get_node("Background/Playground").visible = false


func _on_exit_to_corridor_pressed() -> void:
	get_node("Background/Playground").visible = true
	get_node("Background/Main Gate").visible = false

#Prison Cell
func _on_enter_prison_pressed() -> void:
	
	get_node("Background/Court").visible = true
	get_node("Background/Corridor to dungeon").visible = false
	


func _on_pristo_court_pressed() -> void:
	get_node("Background/3 doors").visible = true
	get_node("Background/Corridor to dungeon").visible = false
	

#Enter Dungeon to 3 doors
func _on_dungeon_1_pressed() -> void:
	get_node("Background/Corridor to dungeon").visible = true
	get_node("Background/3 doors").visible = false


func _on_dungeon_2_pressed() -> void:
	get_node("Background/Prison cell").visible = true
	get_node("Background/3 doors").visible = false


func _on_prisoner_pressed() -> void:
	pass
	



func _on_a_pressed() -> void:
	Trust.loseTrust(5)
	eventno += 1
	


func _on_b_pressed() -> void:
	Trust.gainTrust(5)
	eventno += 1


func _on_farmer_item_selected(index: int) -> void:
	match index:
		0:	
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "It does sir, But only when I leave the house. Inside no rain sir"
			
		1:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I use pure fertiliser. Only natural cow dung from neighbour's cow"
			
		2:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Farmer"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I dont know sir. I dont have money to buy seed so I dig out neighbour's seed and plant in my land"
			eventno += 1
			


func _on_gold_pressed() -> void:
	Trust.gainTrust(6)
	eventno +=1


func _on_punish_pressed() -> void:
	Trust.gainTrust(3)
	eventno +=1

func _on_punishrob_pressed() -> void:
	Trust.gainTrust(5)
	eventno +=1

func _on_let_go_pressed() -> void:
	Trust.gainTrust(2)
	eventno +=1


func _on_reduced_punishment_pressed() -> void:
	Trust.gainTrust(7)
	eventno +=1
