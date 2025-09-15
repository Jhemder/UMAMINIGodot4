# scripts/UmaCollection.gd
extends Control

# Referencias a nodos
@onready var photo: TextureRect = $HBoxContainer/RightPanel/Photo
@onready var name_label: Label = $HBoxContainer/RightPanel/Name
@onready var stars_label: Label = $HBoxContainer/RightPanel/Stars
@onready var description_label: Label = $HBoxContainer/RightPanel/Description
@onready var stats_label: Label = $HBoxContainer/RightPanel/Stats

# Datos de las Umas
var umas: Array = [
	{
		"name": "Agnes Tachyon",
		"stars": 4,
		"description": "Una investigadora obsesionada con la ciencia y las carreras. Siempre busca empujar los límites.",
		"stats": {
			"Velocidad": 80,
			"Resistencia": 65,
			"Fuerza": 70
		},
		"image": preload("res://assets/sprites/agnes.png")
	},
	{
		"name": "Special Week",
		"stars": 5,
		"description": "Una Uma enérgica y optimista que sueña con ser la mejor corredora.",
		"stats": {
			"Velocidad": 90,
			"Resistencia": 85,
			"Fuerza": 75
		},
		"image": preload("res://assets/sprites/specha.png")
	}
]

# Inicialización
func _ready():
	# Muestra la primera Uma por defecto
	_on_uma_selected(0)

# Muestra los datos de la Uma seleccionada
func _on_uma_selected(uma_index: int) -> void:
	if uma_index < 0 or uma_index >= umas.size():
		return
	
	var uma = umas[uma_index]
	
	# Imagen
	photo.texture = uma["image"]
	
	# Nombre
	name_label.text = uma["name"]
	
	# Estrellas
	var stars_text := ""
	for i in range(uma["stars"]):
		stars_text += "★"
	for i in range(5 - uma["stars"]):
		stars_text += "☆"
	stars_label.text = stars_text
	
	# Descripción
	description_label.text = uma["description"]
	
	# Stats
	var stats_text := ""
	for key in uma["stats"].keys():
		stats_text += "%s: %d\n" % [key, uma["stats"][key]]
	stats_label.text = stats_text
