extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_btn_exit_pressed():
	get_tree().quit(0);


func _on_btn_new_game_pressed():
	get_tree().change_scene("res://src/Game.tscn")
