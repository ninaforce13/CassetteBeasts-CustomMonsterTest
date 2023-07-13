
extends ContentInfo

var monster = preload("res://mods/Custom Monster/customform1.tres")
var tapecollection_ext: Resource = preload("TapeCollections_Ext.gd")
var party_ext: Resource = preload("Party_Ext.gd")
func _init():
	
	tapecollection_ext.take_over_path("res://global/save_state/TapeCollection.gd")
	party_ext.take_over_path("res://global/save_state/Party.gd")
	
	load_monster(monster)
	
func load_monster(monster):
	yield (SceneManager.preloader, "singleton_setup_completed")
	MonsterForms.basic_forms["testmonster1"] = monster
	MonsterForms.by_name.append(monster)
	MonsterForms.by_index.append(monster)
	print("Monster Mod 1 loaded")
