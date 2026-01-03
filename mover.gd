extends ColorRect


func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.is_pressed():
		if event.physical_keycode == KEY_W:
			if position.y > 0:
				position.y -= 10
		if event.physical_keycode == KEY_S:
			if position.y < get_viewport_rect().size.y - size.y:
				position.y += 10
		if event.physical_keycode == KEY_A:
			if position.x > 0:
				position.x -= 10
		if event.physical_keycode == KEY_D:
			if position.x < get_viewport_rect().size.x - size.x:
				position.x += 10
