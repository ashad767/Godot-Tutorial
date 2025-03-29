extends Node2D
@onready var right: RayCast2D = $right
@onready var left: RayCast2D = $left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(right.is_colliding()):
		direction = -1
		animated_sprite_2d.flip_h = true;
	if(left.is_colliding()):
		direction = 1
		animated_sprite_2d.flip_h = false;
			
	position.x += 60 * delta * direction
