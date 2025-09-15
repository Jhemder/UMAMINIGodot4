extends Control

@onready var imagen = $Imagen
@onready var nombre = $Nombre

func setup(texture: Texture2D, nombre_texto: String):
	imagen.texture = texture
	nombre.text = nombre_texto
