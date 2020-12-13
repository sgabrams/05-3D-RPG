extends Node

var timer = 0
var score = 0

func _ready():
	_update_score(0)
	
func reset():
	timer = 0
	score = 0
	
func _input(event):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func _update_score(s):
	score += s 
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)
	
func update_time():
	var t_m = floor(timer / 60.0)
	var t_s = timer % 60
	var t = "True: %02d" % t_m
	t += ":%02d" % t_s
	get_node("/root/Game/UI/Time").text = t 
