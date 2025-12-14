extends CharacterBody2D

const SPEED = 100.0  
var pode_vender = "nao"
var pode_entrar = "nao"



func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO

	# Movimento nas 4 direções
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Normaliza o vetor (pra não andar mais rápido na diagonal)
	direction = direction.normalized()
	
	# Define a velocidade
	velocity = direction * SPEED
	
	# Move e detecta colisão automaticamente
	move_and_slide()
	
	if direction == Vector2.ZERO:
		# Nenhuma tecla pressionada → animação parado
		$AnimatedSprite2D.play("parado")
	else:
		# Tocando animação conforme a direção
		if direction.x > 0:
			$AnimatedSprite2D.play("andando_frente")
		elif direction.x < 0:
			$AnimatedSprite2D.play("andando_tras")
			
	if Input.is_action_just_released("vender") and pode_vender == "sim":

		if Dados.vender("milho"):
			print("Vendeu milho")
			$"../venda".play()
		elif Dados.vender("berinjela"):
			print("Vendeu berinjela")
			$"../venda".play()

		elif Dados.vender("morango"):
			print("Vendeu morango")
			$"../venda".play()

		elif Dados.vender("laranja"):
			print("Vendeu laranja")
			$"../venda".play()

	
func _on_sementes_body_entered(body: Node2D) -> void:
	Dados.semente += 1
	
	
func _on_porta_casa_body_entered(body: Node2D) -> void:

	
	
	
	if body == self:
	
		$"../musica_interior".play()
		get_tree().change_scene_to_file("res://dentro_da_casa.tscn")

		
	



func _on_npc_venda_body_entered(body: Node2D) -> void:
	pode_vender = "sim"
	
	


func _on_npc_venda_body_exited(body: Node2D) -> void:
	pode_vender = "nao"
	
		



	
	


func _on_porta_saida_body_entered(body: Node2D) -> void:
	if body == self:
		get_tree().change_scene_to_file("res://principal.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	Dados.terra_plantio ="sim"


func _on_area_2d_body_exited(body: Node2D) -> void:
	Dados.terra_plantio = "nao"
