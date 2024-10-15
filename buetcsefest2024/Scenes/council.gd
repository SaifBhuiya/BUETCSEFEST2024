extends CanvasLayer
var index = 99

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_advisor_select_pressed() -> void:
	index = 0
	get_child(0).get_child(index).get_child(2).disabled = true
	print(index)


func _on_astro_select_pressed() -> void:
	index = 1
	get_child(0).get_child(index).get_child(2).disabled = true

	print(index)


func _on_doc_select_pressed() -> void:
	index = 2
	get_child(0).get_child(index).get_child(2).disabled = true

	print(index)

func _on_jest_select_pressed() -> void:
	index = 3
	get_child(0).get_child(index).get_child(2).disabled = true
	print(index)


func _on_war_select_pressed() -> void:
	index = 4
	get_child(0).get_child(index).get_child(2).disabled = true	
	print(index)
	
func reset():
	get_child(0).get_child(0).get_child(2).disabled = false
	get_child(0).get_child(1).get_child(2).disabled = false
	get_child(0).get_child(2).get_child(2).disabled = false
	get_child(0).get_child(3).get_child(2).disabled = false
	get_child(0).get_child(4).get_child(2).disabled = false
	index=99
