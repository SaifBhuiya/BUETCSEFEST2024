extends Node2D
var eventno = 0 
var playground = 0
var gate = 0
var mom_room = 0
var prison_cell = 0
var sleep = 0
@onready var prisoner: AudioStreamPlayer2D = $Prisoner

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Characters_Dialogues/Council").reset()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(sleep == 10):
		#get_tree().change_scene_to_file("res://Scenes/level_3_day_2.tscn")
		pass
	match mom_room:
		1:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/Character/Queen").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My son, I've am so happy to see you prosper. People are starting to believe in you"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		2: 
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I prayed for your long life"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		3:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Mother I need help..... I am sooo lost. Everyone's fate is dependent on me.....[/i]"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		4:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Will I ever be able to live up to father? I'm a coward. I am crying as a king *sobs*[/i]"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		5:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Crying doesn't make you weak, unless you think it does. You have the courage to express your feelings"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		6:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "As for your father, I've seen him cry... That doesnt make him any less of a Hero"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
			
		7:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]What do i do?...[/i]"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		8:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "First thing is to stop underestimaing yourself. You are already getting the villagers to have faith in you. "
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
			
		9:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "The whole war is about the Gate. Go to it.... Your father had a prisoner from the last war against Kaal whom he visited every night"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		10:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Go there and meet that prisoner"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		11:
			get_node("Background/Mom's Room/backfrommomroom").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Characters_Dialogues/Character/Queen").visible = false
			get_node("Background/Court/Prison cells").visible = true
			mom_room +=1
			
			
			
	match prison_cell:
		1:
			get_node("Background/Corridor to dungeon/PristoCourt").visible = false
			get_node("Background/Corridor to dungeon/Enter Prison").visible = false
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Mom").stop()
			if(prisoner.playing ==false):
				prisoner.play()
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
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Wait you are not Thermos. Who are you? Where's Thermos"
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		6:
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Buttons/Prisoner").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = false
			
		7:
			get_node("Buttons/Prisoner").visible = false
			get_node("Buttons/Questions").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = true
		8:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Your bravery is Kaal's weakness and your cowardice his strengh. He feeds off of fear."
			
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		9:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Your bravery is Kaal's weakness and your cowardice his strengh. He feeds off of fear."
			
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		10:	
			
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/Character/Advisor").visible = false
			get_node("Characters_Dialogues/Character/Prisoner").visible = false
			get_node("Background/Court").visible = true
			get_node("Background/Prison cell").visible = false
			get_node("Background/Court/Corridor").visible = false
			get_node("Background/Court/Prison cells").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[b]DAY FOUR ~ 1 Day till Kaal Attacks[/b]"
			if(Input.is_action_just_pressed("attack")):
						prison_cell += 1
		11:
			get_tree().change_scene_to_file("res://Scenes/day_three.tscn")
			
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
	if(prison_cell == 0):
		prison_cell += 1
	
	
#CORRIDOR



func _on_courtroom_pressed() -> void:
	get_node("Background/Court").visible = true
	get_node("Background/Moms room").visible = false
	


func _on_moms_room_pressed() -> void:
	get_node("Background/Mom's Room").visible = true
	get_node("Background/Moms room").visible = false
	if(mom_room==0):
		mom_room +=1



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
	prison_cell += 1
	



func _on_a_pressed() -> void:
	Trust.loseTrust(5)
	prison_cell += 1
	
	
	


func _on_b_pressed() -> void:
	Trust.gainTrust(5)
	prison_cell += 1


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


func _on_prisontalk_item_selected(index: int) -> void:
	match index:
		0:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I was one of Kaal's war chiefs"
			
		1:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Kaal set me up to get caught so I could enter the palace and find intel about Thermos"
		2:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "After being captured, Thermos treated me with kindness. Even after finding out my motive he took care of me. This place didnt feel like a cell."
	
		3:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Prisoner"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Your bravery is Kaal's weakness and your cowardice his strengh. He feeds off of fear."
			prison_cell += 1
			get_node("Buttons/Questions").visible =false
			
		
			
			
			
			
				
