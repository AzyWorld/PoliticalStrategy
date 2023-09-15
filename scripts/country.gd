extends Node

var Main

var CountryName
var CountryColor = Color(0, 0, 0)
var MyProvs = []
var people = 0
var Player = false

var taxLevel = 0.1

var money = 0

func _init(_name, _col, pp=0):
	CountryName = _name
	CountryColor = _col
	people = pp

func _ready():
	if Player:
		Data.get_parent().get_node("Main/HUD/Resources/Money").text = str(money)
	for i in MyProvs:
		i.people = people / len(MyProvs)

func next():
	taxLevel = Main.get_node("HUD/OptionsWindow/ecs/taxSlider").value/100
	money += 100*taxLevel
	if Player:
		Main.get_node("HUD/Resources/Money").text = "Казна: " + str(money) + "$"
