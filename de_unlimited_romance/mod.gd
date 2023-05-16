extends ContentInfo

var unflag_romance: Reference = preload("res://mods/de_unlimited_romance/uncheck_romanced.gd").new()

func init_content() -> void:
	SaveSystem.connect("file_loaded", self, "_on_SaveSystem_file_loaded")
	
func _on_SaveSystem_file_loaded() -> void:
	unflag_romance.start_up()
