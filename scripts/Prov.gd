extends Node

var ProvName = "Provintion"
var color = Color(1, 1, 1)
var ProvOwner = null
var Obj
var people

func _init(_name, _obj, _owner, p):
	ProvName = _name
	Obj = _obj
	ProvOwner = _owner
	people = p

func next():
	Obj.color = color
