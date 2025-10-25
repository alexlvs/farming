extends CharacterBody2D

const SPEED = 100.0  # pode ajustar a velocidade aqui

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


func _on_sementes_body_entered(body: Node2D) -> void:
	Dados.semente += 1
