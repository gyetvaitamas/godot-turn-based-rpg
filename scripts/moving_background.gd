extends TextureRect

@export var speed : float = 200.0
@export var extents : float = 1024.0
@onready var start_post : Vector2 = position

@export var color_lerp : Gradient

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * delta
	
	if position.x - start_post.x >= extents:
		position = start_post

	var time = abs(sin(Time.get_unix_time_from_system()))
	modulate = color_lerp.sample(time)
