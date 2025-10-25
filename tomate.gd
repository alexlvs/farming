extends Area2D

var terra = "nao"
var plantar = "nao"

func _ready() -> void:
	
	
	hide()
	



func _process(delta: float) -> void:
	
	$"../segura_informacoes/semente_tomate".text = str("Número de sementes: " ,Dados.semente)
	
	if terra == "sim":
		if Dados.semente >=1 and Input.is_action_just_pressed("ui_accept"):
			show()
			Dados.semente -=1
			$Tomate1.frame = 0
			await get_tree().create_timer(3,0).timeout
			$Tomate1.frame = 1
			await get_tree().create_timer(5,0).timeout
			$Tomate1.frame = 2
			await get_tree().create_timer(7,0).timeout
			$Tomate1.frame = 3
			await get_tree().create_timer(10,0).timeout
			$Tomate1.frame = 4

	# aqui ver se ta na terra
func _on_body_entered(body: Node2D) -> void:
	terra = "sim"
	
	# aqui ver se saiu da terra
func _on_body_exited(body: Node2D) -> void:
	terra = "nao"
