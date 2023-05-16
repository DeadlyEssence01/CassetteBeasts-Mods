extends ContentInfo

func init_content() -> void:

	var res_map: Resource = preload("menus/map_pause/MapPauseMenu.gd")
	res_map.take_over_path("res://menus/map_pause/MapPauseMenu.gd")
