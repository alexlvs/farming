extends Area2D

var semente = 1

func _ready() -> void:
	
	
	hide()
	



func _process(delta: float) -> void:
	$"../segura_informacoes/senente_tomate".text = str("Número de sementes: " ,semente)
	print(semente)
	pass


func _on_body_entered(body: Node2D) -> void:
	
	if semente ==1:
		show()
		semente -=1
		$Tomate1.frame = 0
		await get_tree().create_timer(3,0).timeout
		$Tomate1.frame = 1
		await get_tree().create_timer(5,0).timeout
		$Tomate1.frame = 2
		await get_tree().create_timer(7,0).timeout
		$Tomate1.frame = 3
		await get_tree().create_timer(10,0).timeout
		$Tomate1.frame = 4
	
		show()
		$Tomate2.frame = 0
		await get_tree().create_timer(3,0).timeout
		$Tomate2.frame = 1
		await get_tree().create_timer(5,0).timeout
		$Tomate2.frame = 2
		await get_tree().create_timer(7,0).timeout
		$Tomate2.frame = 3
		await get_tree().create_timer(10,0).timeout
		$Tomate2.frame = 4
	
		show()
		$Tomate3.frame = 0
		await get_tree().create_timer(3,0).timeout
		$Tomate3.frame = 1
		await get_tree().create_timer(5,0).timeout
		$Tomate3.frame = 2
		await get_tree().create_timer(7,0).timeout
		$Tomate3.frame = 3
		await get_tree().create_timer(10,0).timeout
		$Tomate3.frame = 4
