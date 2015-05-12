
extends Sprite

# member variables here, example:
# var a=2
# var b="textvar"
var speed = 200
var direction = Vector2(1,0)
var position = get_pos();
var changex = true
var changey = true
var canSpawn = true
var size = get_scale()
var cooldown = 1


func _ready():
	# Initialization here
	var sprite = Sprite.new()
	sprite.set_texture(get_texture())
	sprite.set_pos(Vector2(0,139))
	get_parent().add_child(sprite)
	sprite.set_process(true);
	sprite.s
func _process(delta):
	if(changex && position.x > 403):
		direction = Vector2(0,1)
		changex = false
		print ("start spawning")
		
		canSpawn = false
	if(changey && position.y > 430):
		direction=Vector2(1,0)
		changey = false
	position  +=  direction*delta*speed
	set_pos(position)
	if (position.x > get_viewport_rect().end.x + size.x):
		queue_free()
	if (canSpawn && delta > cooldown):
		