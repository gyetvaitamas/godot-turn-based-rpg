extends TextureRect

@export var speed : float = 200.0
@export var extents : float = 1024.0
@export var color_lerp : Gradient

@onready var start_post : Vector2 = position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * delta
	
	if position.x - start_post.x >= extents:
		position = start_post

	var time = abs(sin(Time.get_unix_time_from_system()))
	modulate = color_lerp.sample(time)
