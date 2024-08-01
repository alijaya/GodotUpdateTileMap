extends Node2D

@onready var tilemap: UpdateTileMap = %TileMap

func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var mouse_global := tilemap.get_global_mouse_position()
		var mouse_local := tilemap.to_local(mouse_global)
		var mouse_map := tilemap.local_to_map(mouse_local)
		
		tilemap.update_tile(0, mouse_map, func (tile_data: TileData):
			tile_data.modulate = Color.RED
		)
