extends Container

@onready var card = preload("res://CardHolder.tscn")
var startPosition
var cardHighlighted = false

func _on_mouse_entered():
	$AnimationPlayer.play("Select")
	cardHighlighted = true
	
	
func _on_mouse_exited():
		$AnimationPlayer.play("Deselect")
		cardHighlighted = false


func _on_gui_input(event):
	if(event is InputEventMouseButton) and (event.button_index == 1):
		if event.button_mask == 1:
			
			if cardHighlighted:
				var cardTemp = card.instantiate()
				get_tree().get_root().get_node("Board/CardHolder").add_child(cardTemp)
				Game.cardSelected = true
				if cardHighlighted:
					self.hide()
			elif event.button_mask == 0:
				pass
