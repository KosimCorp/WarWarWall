extends Control

signal on_resume_pressed()
signal on_exit_pressed()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_btn_resume_pressed():
	emit_signal("on_resume_pressed")


func _on_btn_exit_pressed():
	emit_signal("on_exit_pressed")
