extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@export var spawn_position: Vector2 = Vector2(0, 0)
func _ready() -> void:
	spawn_position = global_position

func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if not is_on_floor():
		velocity.y += get_gravity().y * delta
	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	move_and_slide()
	

func die() -> void:
	global_position = spawn_position
