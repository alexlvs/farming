extends Area2D

var terra = "nao"
var plantar = "nao"
var ja_tem_planta = "nao"
var pode_colher = "nao"
var esta_perto = "nao"



func _ready() -> void:
	
	
	hide()
	



func _process(delta: float) -> void:
	
	$"../segura_informacoes/semente_tomate".text = str("Número de sementes: " ,Dados.semente)
	
	if terra == "sim" and ja_tem_planta == "nao" :
		if Dados.semente >=1 and Input.is_action_just_pressed("ui_accept"):
			show()
			ja_tem_planta = "sim"
			Dados.semente -=1
			$Tomate1.frame = 0
			await get_tree().create_timer(3,0).timeout
			plantar =  "nao"
			$Tomate1.frame = 1
			await get_tree().create_timer(5,0).timeout
			$Tomate1.frame = 2
			await get_tree().create_timer(7,0).timeout
			$Tomate1.frame = 3
			await get_tree().create_timer(10,0).timeout
			$Tomate1.frame = 4
			await get_tree().create_timer(7,0).timeout
			$Tomate1.frame = 5
			pode_colher = "sim"
			
		if Input.is_action_just_released("colher") and pode_colher == "sim":
				queue_free()
			



	# aqui ver se ta na terra
func _on_body_entered(body: Node2D) -> void:
	await get_tree().create_timer(3.0).timeout
	$"../borboleta/AnimationPlayer".play("voando")
	terra = "sim"
	
	# aqui ver se saiu da terra
func _on_body_exited(body: Node2D) -> void:
	$"../borboleta/AnimationPlayer".play("noite")
	terra = "nao"
	
	


func _on_tomate_body_entered(body: Node2D) -> void:
	var esta_perto = "sim"


func _on_tomate_body_exited(body: Node2D) -> void:
	var esta_perto = "nao"
