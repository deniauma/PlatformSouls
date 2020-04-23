extends Actor

func _ready():
	_velocity.x = -speed.x
	set_physics_process(false)

func _physics_process(delta):
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	
