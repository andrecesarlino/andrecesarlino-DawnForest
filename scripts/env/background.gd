extends ParallaxBackground
class_name Background

export(bool) var can_process
export(Array, int) var layer_speed

func _ready():
	if can_process == false:
		set_physics_process(false)
		
func _physics_process(delta):
	for index in get_child_count():
		if get_child(index) is ParallaxLayer:
			#quando estiver ativo o can_process na layer 4 o index vai ser zero
			get_child(index).motion_offset.x -= delta * layer_speed[index]
			
