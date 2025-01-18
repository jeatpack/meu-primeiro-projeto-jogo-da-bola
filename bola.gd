extends CharacterBody2D

var ese = 0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	print(ese)
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		rotation = rotation + 0.1
	

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$tempo_de_pulo.start()
		
	

	move_and_slide()


func _on_tempo_de_pulo_timeout() -> void:
	if not is_on_floor():
		ese = 1
	if is_on_floor():
		ese = 0
		
	
