extends Node2D

@export var player_num: int;
var isKing: bool = false;
var sprite: Sprite2D;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	sprite = get_node("Sprite");
	setPiece();	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setPiece() -> void:
	if isKing:
		sprite.frame = 1 + (2 * player_num);
	else:
		sprite.frame = 2 * player_num;