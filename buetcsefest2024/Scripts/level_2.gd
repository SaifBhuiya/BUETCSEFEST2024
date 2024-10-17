extends Node2D

var playground = 0
var gate = 0
var mom_room = 0
var prison_cell = 0
var sleep = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(sleep == 2):
		get_tree().change_scene_to_file("res://Scenes/level_3_day_2.tscn")
	
	match playground:
		1:
			get_node("Background/Playground").get_child(0).visible = false
			get_node("Background/Playground").get_child(1).visible = false
			get_node("Characters_Dialogues/Character/LittleBrother").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Younger brother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Big Brother! I've heard a strange man came and threatened us??"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		2:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]What you've heard is right[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		3:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Younger brother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "Brother, You just give me the orders and I will go and handle him myself"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		4:
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I know you will, but we have to take steps carefully in these matters[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		5:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]Let me handle it for now. You worry about your studies[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		6: 
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Younger brother"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "I believe in you brother. Father was Brave and a Hero to all, but I know you will surpass him in evey possible way."
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		7:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = " Okay I'll go study now"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		8: 
			get_node("Characters_Dialogues/Character/LittleBrother").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I wish what you said was right. I feel so..... lost.[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		9:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I dont even know what fate awaits us. The villagers dont seem to have much faith in me.[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		10:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]And they are right to do so. I mean how could a 15 year old handle an entire Kingdom[/i]"
			if(Input.is_action_just_pressed("attack")):
						playground += 1
		11:
			get_node("Characters_Dialogues/DialogueUI").get_child(1).visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = false
			#get_node("Background/Playground").get_child(0).visible = true
			get_node("Background/Playground").get_child(1).visible = true
			playground += 1
			sleep +=1
			
	match mom_room:
		1:
			
			get_node("Background/Mom's Room/backfrommomroom").visible = false
			get_node("Characters_Dialogues/Character/Queen's Servant").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = true
			get_node("Characters_Dialogues/DialogueUI").get_child(0).get_child(0).text = "Queen Mother's Servant"
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "My King! Queen Mother will be gone for 2 days to perform a ritual for you. I'll tell her you came by"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		2:
			get_node("Characters_Dialogues/Character/Queen's Servant").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(1).get_child(0).text = "[i]I'll come back later to talk to Mom[/i]"
			if(Input.is_action_just_pressed("attack")):
						mom_room += 1
		3:
			get_node("Background/Mom's Room/backfrommomroom").visible = true
			get_node("Characters_Dialogues/DialogueUI").visible = false
			get_node("Characters_Dialogues/DialogueUI").get_child(0).visible = true
			mom_room += 1
			sleep +=1
	
			
	
	
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
	if(playground == 0):
		playground +=1
		


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
	if(mom_room == 0):
		mom_room += 1


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
	if(gate == 0):
		gate += 1


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
