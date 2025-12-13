extends Node
var semente = 0
var milho = 0
var berinjela = 0 
var total_vegetais:
	get:
		return milho + berinjela
var dinheiro = 0
var morango = 0 
var laranja = 0
var total_frutas:
	get:
		return morango + laranja
var terra_plantio = "nao"

var precos := {
	"milho": 6,
	"berinjela": 8,
	"morango": 12,
	"laranja": 10
}

func vender(item: String) -> bool:
	if get(item) > 0:
		set(item, get(item) - 1)
		dinheiro += precos[item]
		return true
	return false

func _ready() -> void:
	pass 
	

func _process(delta: float) -> void:
	pass
