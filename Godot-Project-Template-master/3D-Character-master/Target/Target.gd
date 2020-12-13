extends StaticBody

func die():
	Global._update_score(10)
	queue_free()
