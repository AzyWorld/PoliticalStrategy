extends Node2D

var StopTouch = false
var isCountryChoice = false
var is_dragging = false

func _input(event):
	if event is InputEventScreenTouch:
		for i in $Map/Regions.get_children():
			for k in $HUD.get_children():
				if k.get_rect().has_point(event.position) and k.visible:
					StopTouch = true
			if Geometry.is_point_in_polygon(get_viewport().canvas_transform.affine_inverse().xform(event.position), i.polygon) and not StopTouch and not is_dragging:
				$Map.start_flashing(i)
				$HUD.selectedProv = i
	StopTouch = false
	
func _ready():
	$HUD/Description.text = "Выберите страну"
	$HUD/Next.text = "Выбор"

func country_choisen():
	for i in Data.countries:
		i.Player = $HUD.selectedProvObj.ProvOwner
		$Player.MyCountry = $HUD.selectedProvObj.ProvOwner
	isCountryChoice = true
	$HUD/Description.text = ""
	$HUD/Next.text = "Ход"
	$HUD/Name.text = $Player.MyCountry
	$HUD/Name.rect_size.x += 100

func _on_Loading_timeout():
	for k in Data.provs:
		for i in Data.countries:
			if k.ProvOwner == i.CountryName:
				i.MyProvs.append(k)
				k.color = i.CountryColor
				k.next()
