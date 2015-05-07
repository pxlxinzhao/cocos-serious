
extends Label

var a = 0


func _ready():
	# Initialization here
	set_process(true)
	pass

func _process(delta):
	a+=delta
	set_text(str(a))