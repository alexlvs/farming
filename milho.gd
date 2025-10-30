extends Area2D
var terra = "nao"
var plantar = "nao"
var ja_tem_planta = "nao"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if terra == "sim" and ja_tem_planta == "nao" :
		if Dados.semente >=1 and Input.is_action_just_pressed("ui_accept"):
			show()
			ja_tem_planta = "sim"
			Dados.semente -=1
			$AnimatedSprite2D.frame = 0
			await get_tree().create_timer(3,0).timeout
			$AnimatedSprite2D.frame = 1
			await get_tree().create_timer(5,0).timeout
			$AnimatedSprite2D.frame = 2
			await get_tree().create_timer(7,0).timeout
			$AnimatedSprite2D.frame = 3
			await get_tree().create_timer(10,0).timeout
			$AnimatedSprite2D.frame = 4
			await get_tree().create_timer(12,0).timeout
			$AnimatedSprite2D.frame = 5
