extends Unit

@export var detect_range : float = 100.0
@onready var game_manager = get_node("/root/RTS_Scene")

func _process(delta):
	if target == null:
		for player in game_manager.players:
			if player == null:
				continue
			
			var dist = global_position.distance_to(player.global_position)
			
			if dist <= detect_range:
				set_target(player)
	
	target_check()
	
