extends Container

@onready var card = preload("res://Scenes/cardHolder.png")
var startPosition
var cardHighlighted = false

func _on_mouse_entered():
	$AnimationPlayer.play("Select")
	cardHighlighted = true
	
	
func _on_mouse_exited():
		$AnimationPlayer.play("Deselect")
		cardHighlighted = false


func _on_gui_input(event):
	pass # Replace with function body.
