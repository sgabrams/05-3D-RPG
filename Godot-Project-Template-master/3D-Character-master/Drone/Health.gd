extends ProgressBar

func _physics_process(_delta):
	value = get_node("/root/Game/Drone_Conatiner/Drone").health 
