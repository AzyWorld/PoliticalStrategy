extends Node2D

var Toggle = false
var is_tweening = false
var color = Color(1, 1, 1)
var color2 = Color(1, 1, 1)
var current_object
var previous_object
var prev_color


func start_flashing(obj):
	if current_object != null:
		$Tween.reset_all()
		$Tween.stop_all()
		$Tween.remove_all()
		current_object.color = color
	Toggle = false
	current_object = obj
	color = current_object.color
	color2 = Color(color.r + 0.1, color.g + 0.1, color.b + 0.1)
	$Tween.interpolate_property(current_object, "color", color, color2, 0.3)
	$Tween.start()

func _on_Tween_tween_all_completed():
	if Toggle:
		$Tween.interpolate_property(current_object, "color", color, color2, 0.7)
		$Tween.start()
	else:
		$Tween.interpolate_property(current_object, "color", color2, color, 0.7)
		$Tween.start()
		
	Toggle = !Toggle

func _process(delta):
	if current_object != null:
		var a = current_object.polygon
		a.append(current_object.polygon[0])
		$Line2D.points = a
