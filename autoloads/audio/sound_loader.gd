class_name SoundLoader

# How setup work is within _list you preload the sound so it's an AudioStream

func load_audio() -> void:
	load_ost()
	load_sfx()
	load_ui()
	load_ambient()

func load_ost() -> void:
	# Add OST loads here
	var song_list : Dictionary[int, Array] = {
		0: [preload("res://assets/audio/ost/music_day_0_and_6_dream.wav"), 0],
		1: [preload("res://assets/audio/ost/music_day_1_dream.wav"), 0],
		2: [preload("res://assets/audio/ost/music_day_2_dream.wav"), 0],
		3: [preload("res://assets/audio/ost/music_day_7_dream.wav"), 0],
		4: [preload("res://assets/audio/ost/music_gameplay.wav"), 0],
		5: [preload("res://assets/audio/ost/music_menu.wav"), 0],
		6: [preload("res://assets/audio/ost/music_tutorial.wav"), 0],
		7: [preload("res://assets/audio/ost/stinger_day_1.wav"), 0],
		8: [preload("res://assets/audio/ost/stinger_day_2.wav"), 0],
		9: [preload("res://assets/audio/ost/stinger_day_6.wav"), 0],
		10: [preload("res://assets/audio/ost/stinger_day_7.wav"), 0],
	}
	
	for song in song_list.values():
		song.get(0).resource_name = grab_name(song.get(0).resource_path)
		MusicManager.add_ost(song.get(0), song.get(1))

func load_sfx() -> void:
	# Add SFX loads here
	var sfx_list : Array[AudioStream] = [
		preload("res://assets/audio/sfx/chime.wav"),
		preload("res://assets/audio/sfx/door.wav"),
		preload("res://assets/audio/sfx/sfx_ale_beer.wav"),
		preload("res://assets/audio/sfx/sfx_bottles.wav"),
		preload("res://assets/audio/sfx/sfx_day_0_dream_clinking_glass.wav"),
		preload("res://assets/audio/sfx/sfx_day_0_dream_fire_1.wav"),
		preload("res://assets/audio/sfx/sfx_day_0_go_downstairs.wav"),
		preload("res://assets/audio/sfx/sfx_day_0_water_trickles.wav"),
		preload("res://assets/audio/sfx/sfx_day_0_window_creaking.wav"),
		preload("res://assets/audio/sfx/sfx_deliver_drink.wav"),
		preload("res://assets/audio/sfx/sfx_knife_cut_1.wav"),
		preload("res://assets/audio/sfx/sfx_knife_cut_2.wav"),
		preload("res://assets/audio/sfx/sfx_knife_cut_3.wav"),
		preload("res://assets/audio/sfx/sfx_mortar.wav"),
		preload("res://assets/audio/sfx/sfx_mug_1.wav"),
		preload("res://assets/audio/sfx/sfx_mug_2.wav"),
		preload("res://assets/audio/sfx/sfx_mug_3.wav"),
		preload("res://assets/audio/sfx/sfx_rooster.wav"),
	]
	
	for sfx in sfx_list:
		sfx.resource_name = grab_name(sfx.resource_path)
		SoundManager.add_sound(sfx)

func load_ui() -> void:
	# Add UI loads here
	var ui_list : Array[AudioStream] = [
		preload("res://assets/audio/sfx/sfx_ui_menu_1.wav"),
		preload("res://assets/audio/sfx/sfx_ui_menu_2.wav"),
	]
	
	for ui in ui_list:
		ui.resource_name = grab_name(ui.resource_path)
		SoundManager.add_sound(ui)

func load_ambient() -> void:
	# Add Ambient loads here
	var ambient_list : Array[AudioStream] = []
	
	for ambient in ambient_list:
		ambient.resource_name = grab_name(ambient.resource_path)
		SoundManager.add_sound(ambient)

func grab_name(path: String) -> String:
	return path.split("/")[path.split("/").size() - 1].split(".")[0]
