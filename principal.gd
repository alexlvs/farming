extends Node2D
var node = preload("res://milho.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_released("milho"):
		var instance = node.instantiate()
		instance.position =$milho.position
		add_child(instance)
		instance.position =$milho2.position
		add_child(instance)
		instance.position =$milho3.position
		add_child(instance)
		
