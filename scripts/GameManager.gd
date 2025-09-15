# GameManager.gd - Maneja datos globales del juego
extends Node

# La Uma seleccionada por el jugador
var selected_uma: UmaData = null

# Guardar la Uma seleccionada
func set_selected_uma(uma: UmaData) -> void:
	selected_uma = uma
	print("[GameManager] Uma seleccionada:", uma.name)

# Obtener la Uma seleccionada
func get_selected_uma() -> UmaData:
	return selected_uma
