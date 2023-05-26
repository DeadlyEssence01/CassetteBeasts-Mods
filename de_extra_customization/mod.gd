extends ContentInfo


func _init():
	TranslationServer.add_translation(preload("mod_strings.en.translation"))
	add_hairs()
	add_heads()
	push_to_template()


func add_hairs():
	var battle_hair: LayerPartIndex = preload("res://sprites/characters/battle/human_layers/hair.tres")
	battle_hair.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/battle/human_layers/hair_cleeo.json"))
	battle_hair.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/battle/human_layers/hair_kuneko.json"))
	
	var world_hair: LayerPartIndex = preload("res://sprites/characters/world/human_layers/hair.tres")
	world_hair.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/world/human_layers/hair_cleeo.json"))
	world_hair.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/world/human_layers/hair_kuneko.json"))
	
func add_heads():
	var battle_head: LayerPartIndex = preload("res://sprites/characters/battle/human_layers/head.tres")
	battle_head.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/battle/human_layers/head_cleeo.json"))
	
	var world_head: LayerPartIndex = preload("res://sprites/characters/world/human_layers/head.tres")
	world_head.parts.push_back(preload("res://mods/de_extra_customization/sprites/characters/world/human_layers/head_cleeo.json"))
	
func push_to_template():
	var res: Resource = preload("res://data/human_templates/002_male.tres")
	res.hair_parts.push_back("cleeo")
	res.hair_parts.push_back("kuneko")
	res.head_parts.push_back("cleeo")
