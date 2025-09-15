extends Control

func _ready():
	# Inicializar GameManager si no existe
	if not GameManager:
		print("GameManager no encontrado, asegúrate de agregarlo como Singleton")

func _on_play_button_down() -> void:
	# Aquí puedes ir directamente a la escena de carreras
	# o verificar si tiene una Uma seleccionada primero
	if GameManager.get_selected_uma():
		print("Iniciando carrera con: ", GameManager.get_selected_uma().name)
		# get_tree().change_scene_to_file("res://scenes/race/RaceScene.tscn")
	else:
		print("Primero debes seleccionar una Uma en la colección")
		# Ir automáticamente a la colección
		_on_umas_button_down()

func _on_umas_button_down() -> void:
	# Cambiar a la escena de colección
	get_tree().change_scene_to_file("res://scenes/ui/UmaCollection.tscn")

func _on_settings_button_down() -> void:
	print("Opciones - Por implementar")
	# get_tree().change_scene_to_file("res://scenes/ui/Settings.tscn")

func _on_shop_button_down() -> void:
	print("Tienda - Por implementar")
	# get_tree().change_scene_to_file("res://scenes/ui/Shop.tscn")

func _on_exit_button_down() -> void:
	get_tree().quit()
