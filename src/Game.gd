extends Node2D

var is_game_pause = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$Camera2D.position = $Player.position
	
	if Input.is_action_just_pressed("ui_cancel"):
		if is_game_pause:
			pause_game(false)
		else:
			pause_game(true)
		
	$Player.isAlive = !is_game_pause

func _on_PauseMenu_on_resume_pressed():
	pause_game(false)

func _on_PauseMenu_on_exit_pressed():
	get_tree().change_scene("res://src/Ui/MainMenu.tscn")

func pause_game(status):
	is_game_pause = status
	
	if is_game_pause:
		$CanvasLayer/PauseMenu.visible = true
		is_game_pause = true
	else:
		$CanvasLayer/PauseMenu.visible = false
		is_game_pause = false
		
