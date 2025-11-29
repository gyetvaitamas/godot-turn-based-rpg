extends ProgressBar

@onready var health_text : Label = $HealthText

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var character = get_parent()
	max_value = character.max_health
	_update_value(character.cur_health)
	
	character.OnTakeDamage.connect(_update_value)
	character.OnHeal.connect(_update_value)

func _update_value(health : int):
	value = health
	health_text.text = str(health) + "/" + str(int(max_value))
