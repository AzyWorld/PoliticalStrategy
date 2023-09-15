extends Camera2D

var limitleft = -160
var limittop = -1000
var limitbottom = 0
var limitright = 1200

var MyCountry = ""
var stopDrag = true

func _input(event):
	if event is InputEventScreenDrag:
		for i in get_parent().get_node("HUD").get_children():
			if i.get_rect().has_point(event.position) and i.visible:
				stopDrag = false
		if stopDrag:
			if not (position.x < limitleft and event.relative.x > 0) and not (position.x > limitright and event.relative.x < 0): 
				position.x -= event.relative.x * zoom.x
			if not (position.y < limittop and event.relative.y > 0) and not (position.y > limitbottom and event.relative.y < 0): 
				position.y -= event.relative.y * zoom.x
		stopDrag = true
