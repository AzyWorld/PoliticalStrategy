extends Node

var countries = []
var provs = []
var Country = preload("res://scripts/country.gd")
var Prov = preload("res://scripts/Prov.gd")

signal next
var provFile = File.new()
var provNames
var cFile = File.new()

var a

func _ready():
	provFile.open("res://common/provs.txt", File.READ)
	provNames = provFile.get_as_text()
	provNames = provNames.split("\n")
	countries.append(Country.new("Франция", Color(0.168627, 0.72549, 1)))
	countries.append(Country.new("Германия", Color(0.462745, 0.462745, 0.462745)))
	countries.append(Country.new("Россия", Color(0.482353, 1, 0.360784)))
	countries.append(Country.new("Великобритания", Color(1, 0.701961, 0.701961)))
	countries.append(Country.new("Испания", Color(1, 0.976471, 0.745098)))
	countries.append(Country.new("Португалия", Color(0.478431, 0.72549, 0.466667)))
	countries.append(Country.new("Ирландия", Color(0.694118, 1, 0.596078)))
	countries.append(Country.new("Швейцария", Color(0.92549, 0.411765, 0.411765)))
	countries.append(Country.new("Италия", Color(0.631373, 1, 0.733333)))
	countries.append(Country.new("Мальта", Color(0.611765, 0.121569, 0.603922)))
	countries.append(Country.new("Польша", Color(1, 0.478431, 0.870588)))
	countries.append(Country.new("Украина", Color(0.498039, 0.788235, 1)))
	countries.append(Country.new("Дания", Color(0.74902, 0.298039, 0.298039)))
	countries.append(Country.new("Швеция", Color(0.345098, 0.984314, 1)))
	countries.append(Country.new("Норвегия", Color(0.505882, 0.478431, 0.380392)))
	countries.append(Country.new("Финляндия", Color(1, 1, 1)))
	countries.append(Country.new("Исландия", Color(0.701961, 0.843137, 0.921569)))
	countries.append(Country.new("Бельгия", Color(0.976471, 1, 0.54902)))
	countries.append(Country.new("Нидерланды", Color(1, 0.870588, 0.560784)))
	countries.append(Country.new("Люксембург", Color(0.556863, 1, 0.968627)))
	countries.append(Country.new("Чехия", Color(0.345098, 1, 0.968627)))
	countries.append(Country.new("Австрия", Color(1, 1, 1)))
	countries.append(Country.new("Венгрия", Color(1, 0.694118, 0.980392)))
	countries.append(Country.new("Словакия", Color(0.941176, 0.937255, 0.815686)))
	countries.append(Country.new("Сербия", Color(0.266667, 0.329412, 1)))
	countries.append(Country.new("Хорватия", Color(1, 0.305882, 0.941176)))
	countries.append(Country.new("Словения", Color(0, 0.952941, 0.686275)))
	countries.append(Country.new("Босния и Герцеговина", Color(0.929412, 0.929412, 0.870588)))
	countries.append(Country.new("Черногория", Color(0.152941, 0.25098, 0.588235)))
	countries.append(Country.new("Македония", Color(0.988235, 0.67451, 0.67451)))
	countries.append(Country.new("Болгария", Color(0.403922, 0.843137, 0.439216)))
	countries.append(Country.new("Греция", Color(0.862745, 0.521569, 0.352941)))
	countries.append(Country.new("Албания", Color(0.623529, 0.184314, 0.921569)))
	countries.append(Country.new("Турция", Color(0.807843, 0.807843, 0.756863)))
	countries.append(Country.new("Беларусь", Color(0.886275, 0.792157, 0.792157)))
	countries.append(Country.new("Литва", Color(0.745098, 0.741176, 0.447059)))
	countries.append(Country.new("Латвия", Color(0.803922, 0.376471, 1)))
	countries.append(Country.new("Эстония", Color(0.454902, 1, 0.898039)))
	countries.append(Country.new("Румыния", Color(1, 0.94902, 0.388235)))
	countries.append(Country.new("Молдавия", Color(1, 0.772549, 0.45098)))
	countries.append(Country.new("Сирия", Color(0.090196, 0.576471, 0.72549)))
	countries.append(Country.new("Ливан", Color(1, 0.811765, 0.247059)))
	countries.append(Country.new("Израиль", Color(0.47451, 1, 0.964706)))
	countries.append(Country.new("Палестина", Color(1, 0.529412, 0.529412)))
	countries.append(Country.new("Ирак", Color(0.831373, 0.815686, 0.584314)))
	countries.append(Country.new("Иран", Color(0.05098, 0.701961, 0.364706)))
	countries.append(Country.new("Кувейт", Color(0.627451, 0.619608, 0)))
	countries.append(Country.new("Иордания", Color(0.392157, 0.85098, 0.282353)))
	countries.append(Country.new("Саудовская Аравия", Color(1, 0.85098, 0.454902)))
	countries.append(Country.new("Казахстан", Color(0.317647, 1, 0.854902)))
	countries.append(Country.new("Туркменистан", Color(0.588235, 0.807843, 0.298039)))
	countries.append(Country.new("Узбекистан", Color(0.701961, 0.305882, 0.713726)))
	countries.append(Country.new("Грузия", Color(0.843137, 0.627451, 0.211765)))
	countries.append(Country.new("Азербайджан", Color(0.352941, 0.74902, 0.67451)))
	countries.append(Country.new("Армения", Color(0.509804, 0.047059, 0.298039)))
	countries.append(Country.new("Египет", Color(0.792157, 0.784314, 0.305882)))
	countries.append(Country.new("Ливия", Color(0.486275, 0.937255, 0.631373)))
	countries.append(Country.new("Алжир", Color(0.419608, 0.670588, 0.27451)))
	countries.append(Country.new("Марокко", Color(0.623529, 0.529412, 0.329412)))
	countries.append(Country.new("Северный Кипр", Color(0.560784, 0.839216, 0.721569)))
	countries.append(Country.new("Южный Кипр", Color(0.827451, 0.584314, 0.584314)))
	countries.append(Country.new("Тунис", Color(0.8, 0.509804, 0.917647)))
	countries.append(Country.new("Газа", Color(0.862745, 0.117647, 0.294118)))
	cFile.open("res://common/countries.txt", File.READ)
	cFile = cFile.get_as_text()
	cFile = cFile.split("\n")
	a = 0
	for i in countries:
		i.people = cFile[a].split(",")[4]
		a += 1
	a = 0

func _process(delta):
	if len(provs)<1:
		if get_parent().get_children()[1].name == "Main":
			for i in countries:
				i.Main = get_parent().get_node("Main")
			for i in get_parent().get_node("Main/Map/Regions").get_children():
				provs.append(Prov.new(provNames[get_parent().get_node("Main/Map/Regions").get_children().find(i)+2].split("=")[0], i, provNames[get_parent().get_node("Main/Map/Regions").get_children().find(i)+2].split("=")[1], 1))

func next():
	emit_signal("next")
	for i in countries:
		i.next()
