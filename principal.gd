extends Node2D
var node = preload("res://milho.tscn")
var morango = preload("res://morango.tscn")
var laranja = preload("res://laranja.tscn")
var berinjela = preload("res://berinjela.tscn")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$musica_principal.play()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_released("milho") and Dados.semente >=1 and Dados.terra_plantio == "sim":
		var instance = node.instantiate()
		instance.position =$fazendeiro.position
		add_child(instance)
		Dados.semente -=1
		$plantar.play()
		
	if Input.is_action_just_released("morango") and Dados.semente >=1 and Dados.terra_plantio == "sim" :
		var instancee = morango.instantiate()
		instancee.position =$fazendeiro.position
		add_child(instancee)
		Dados.semente -=1
		$plantar.play()
		
	if Input.is_action_just_released("laranja") and Dados.semente >=1  and Dados.terra_plantio == "sim" :
		var instanceee = laranja.instantiate()
		instanceee.position =$fazendeiro.position
		add_child(instanceee)
		Dados.semente -=1
		$plantar.play()
		
	if Input.is_action_just_released("berinjela") and Dados.semente >=1  and Dados.terra_plantio == "sim" :
		var instanceeee = berinjela.instantiate()
		instanceeee.position =$fazendeiro.position
		add_child(instanceeee)
		Dados.semente -=1
		$plantar.play()
		
	
	
	
		
