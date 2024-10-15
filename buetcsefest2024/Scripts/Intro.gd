extends Control
@onready var timer: Timer = $Timer
@onready var timer_2: Timer = $Timer2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_timer_timeout() -> void:
	timer_2.start()
	timer.stop()
	get_node("ColorRect/RichTextLabel").text = "[b]Villager 1:[/b] Oh no our savior is Dead, what are we going to do now?\n\n[b]Villager 2:[/b] His son will probably take over\n\n[b]Villager 1:[/b] That boy is just a kid, nothing like our King"
	


func _on_timer_2_timeout() -> void:
	get_tree().change_scene_to_file("res://Scenes/world.tscn")
