
extends Node2D



var screen_size
var pad_size
var a = 0
var ball_speed = 200
var direction = Vector2(-1, 0)
const PAD_SPEED = 300;

func _ready():

	screen_size = get_viewport_rect().size
	pad_size = get_node("left").get_texture().get_size()
	set_process(true)

func restartFunc():
	get_node("/root/global").goto_scene("res://pong.scn")
	
func _process(delta):
	a+=delta
	get_node("Label").set_text(str(floor(a*100)/100) + "sec")
	var ball_pos = get_node("ball").get_pos()
	var left_rect = Rect2( get_node("left").get_pos() - pad_size/2, pad_size)
	var right_rect = Rect2(get_node("right").get_pos() - pad_size/2, pad_size)
	
	ball_pos+=direction*ball_speed*delta
	
	if ( (ball_pos.y<0 and direction.y <0) or (ball_pos.y>screen_size.y and direction.y>0)):
        direction.y = -direction.y
	
	if ( (left_rect.has_point(ball_pos) and direction.x < 0) or (right_rect.has_point(ball_pos) and direction.x > 0)):
		direction.x=-direction.x
		ball_speed*=1.1
		direction.y=randf()*2.0-1
		direction = direction.normalized()

	if (ball_pos.x<0 or ball_pos.x>screen_size.x):
		var winner = " "
		var pos = ball_pos;
		ball_pos=screen_size*0.5 #ball goes to screen center
		ball_speed=200
		direction = Vector2(-1,0)
		a = 0
		if (pos.x<0):
			 winner = "red"
		else:
			winner = "blue"
		get_node("result").set_text("The winner is " + winner) 
		get_node("result").set_opacity(1)
		get_node("ball").set_pos(ball_pos)
		
		
		get_node("restart").connect("pressed",self,"restartFunc")
		set_process(false)

	get_node("ball").set_pos(ball_pos)
    
	#move left pad  
	var left_pos = get_node("left").get_pos()
	
	if (left_pos.y > 0 and Input.is_action_pressed("lup")):
		left_pos.y+=-PAD_SPEED*delta
	if (left_pos.y < screen_size.y and Input.is_action_pressed("ldown")):
		left_pos.y+=PAD_SPEED*delta
	get_node("left").set_pos(left_pos)
	
	#move right pad 
	var right_pos = get_node("right").get_pos()
	
	if (right_pos.y > 0 and Input.is_action_pressed("ui_up")):
		right_pos.y+=-PAD_SPEED*delta
	if (right_pos.y < screen_size.y and Input.is_action_pressed("ui_down")):
		right_pos.y+=PAD_SPEED*delta
	
	
	get_node("right").set_pos(right_pos)