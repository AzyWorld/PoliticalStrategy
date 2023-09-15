extends CanvasLayer

var selectedProv
var selectedProvObj

func _process(delta):
	if selectedProv != null:
		for i in Data.provs:
			if i.Obj == selectedProv:
				selectedProvObj = i
				if get_parent().isCountryChoice:
					$Description.text = "Страна: " + i.ProvOwner + "\nПровинция: " + i.ProvName + "\n" + str(Data.countries.find(i.ProvOwner))
				else:
					$Description.text = i.ProvOwner
	if $OptionsWindow/UpPart/back.pressed:
		$OptionsWindow.visible = false


func _on_ZoomMinus_pressed():
	get_parent().get_node("Player").zoom.x += 0.15
	get_parent().get_node("Player").zoom.y += 0.15


func _on_ZoomPlus_pressed():
	get_parent().get_node("Player").zoom.x -= 0.15
	get_parent().get_node("Player").zoom.y -= 0.15


func _on_Next_pressed():
	if not get_parent().isCountryChoice and selectedProv != null:
		get_parent().country_choisen()
	else:
		Data.next()


func _on_Name_pressed():
	if get_parent().isCountryChoice:
		$OptionsWindow.visible = true
