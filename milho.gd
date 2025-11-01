extends Area2D
#var terra = "nao"
#var plantar = "nao"
#var ja_tem_planta = "nao"
var pode_colher = "nao"
var esta_perto = "nao"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	if Input.is_action_just_released("milho"):
			show()
			#ja_tem_planta = "sim"
			
			$AnimatedSprite2D.frame = 0
			await get_tree().create_timer(2,0).timeout
			$AnimatedSprite2D.frame = 1
			await get_tree().create_timer(3,0).timeout
			$AnimatedSprite2D.frame = 2
			await get_tree().create_timer(4,0).timeout
			$AnimatedSprite2D.frame = 3
			await get_tree().create_timer(5,0).timeout
			$AnimatedSprite2D.frame = 4
			await get_tree().create_timer(6,0).timeout
			$AnimatedSprite2D.frame = 5
			pode_colher = "sim"
	

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("colher") and pode_colher == "sim" and esta_perto == "sim":
			queue_free()
	

func _on_body_entered(body: Node2D) -> void:
	esta_perto = "sim"


func _on_body_exited(body: Node2D) -> void:
	esta_perto = "nao"
