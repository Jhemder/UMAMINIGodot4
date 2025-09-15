# UmaData.gd - Script que define los datos de una Uma
class_name UmaData
extends Resource

@export var name: String = ""
@export var description: String = ""
@export var rarity: int = 1  # ⭐⭐ de 1 a 5
@export var sprite_texture: Texture2D
@export var running_animation: SpriteFrames

# Stats básicos
@export var speed: int = 50          # SPD - Velocidad base
@export var stamina: int = 50        # STA - Resistencia
@export var power: int = 50          # POW - Poder de aceleración
@export var guts: int = 50           # GUT - Aguante en la recta final
@export var intelligence: int = 50   # INT - Estrategia

# Habilidad especial
@export var special_ability_name: String = ""
@export var special_ability_description: String = ""
@export var special_ability_power: int = 20  # Boost que da la habilidad

# Método para obtener la velocidad total
func get_total_speed() -> int:
	return speed + power

# Método para obtener info completa
func get_stats_text() -> String:
	return "SPD: %d\nSTA: %d\nPOW: %d\nGUT: %d\nINT: %d" % [
		speed, stamina, power, guts, intelligence
	]

# Texto bonito para UI
func get_full_info() -> String:
	var stars = "⭐".repeat(rarity)
	return "%s\nRango: %s\n\n%s\n\n%s\n\n%s" % [
		name,
		stars,
		get_stats_text(),
		"✨ %s: %s" % [special_ability_name, special_ability_description],
		description
	]

# ---------- Umas predefinidas ----------

static func create_agnes_tachyon() -> UmaData:
	var agnes = UmaData.new()
	agnes.name = "Agnes Tachyon"
	agnes.description = "Uma científica con gran velocidad e intelecto. Analiza las carreras con precisión quirúrgica."
	agnes.rarity = 5
	agnes.speed = 75
	agnes.stamina = 60
	agnes.power = 80
	agnes.guts = 65
	agnes.intelligence = 90
	agnes.special_ability_name = "Análisis Táctico"
	agnes.special_ability_description = "Aumenta velocidad y reduce consumo de stamina por 5 segundos"
	agnes.special_ability_power = 25
	# Sprite (corrige la ruta según tu carpeta real)
	agnes.sprite_texture = load("res://assets/sprites/agtc001A_00.png")
	return agnes

static func create_special_week() -> UmaData:
	var special = UmaData.new()
	special.name = "Special Week"
	special.description = "Uma enérgica y determinada, perfecta para principiantes. Su espíritu nunca se rinde."
	special.rarity = 4
	special.speed = 70
	special.stamina = 80
	special.power = 65
	special.guts = 85
	special.intelligence = 60
	special.special_ability_name = "Espíritu Ardiente"
	special.special_ability_description = "Boost de velocidad que aumenta con el tiempo"
	special.special_ability_power = 20
	# Cuando tengas el sprite pon la ruta correcta
	# special.sprite_texture = load("res://assets/sprites/special_week.png")
	return special
