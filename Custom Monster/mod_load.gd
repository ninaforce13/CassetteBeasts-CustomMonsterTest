
extends ContentInfo

var monster = preload("res://mods/Custom Monster/customform1.tres")
var tapecollection_ext: Resource = preload("TapeCollections_Ext.gd")
var party_ext: Resource = preload("Party_Ext.gd")
var choose_frankie_ext: Resource = preload("ChooseFrankieTape_Ext.gd")
var frankie_tape_config_ext: Resource = preload("FrankieTapeConfig_Ext.gd")

func _init():
	
	tapecollection_ext.take_over_path("res://global/save_state/TapeCollection.gd")
	party_ext.take_over_path("res://global/save_state/Party.gd")
	choose_frankie_ext.take_over_path("res://cutscenes/sidequests/frankie/ChooseFrankieTape.gd")
	frankie_tape_config_ext.take_over_path("res://world/quest_scenes/FrankieTapeConfig.gd")
	
	load_monster(monster)
	
func load_monster(monster):
	yield (SceneManager.preloader, "singleton_setup_completed")
	MonsterForms.basic_forms["testmonster1"] = monster
	MonsterForms.by_name.append(monster)
	MonsterForms.by_index.append(monster)
	print("Monster Mod 1 loaded")
