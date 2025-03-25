class_name ItemPlaylist
extends Node

signal remove_item(index: int)
signal play_item(index: int)

@export_group("ItemPlaylist")
@export var audio_index: int
@export var audio_name: String :
	get:
		return nome.text
	set(value):
		self.get_node("Linha/Nome").text = value

@onready var nome: Label = $Linha/Nome
@onready var remover: Button = $Linha/Remover
@onready var tocar: Button = $Linha/Tocar

func _ready() -> void:
	remover.button_up.connect(func (): remove_item.emit(audio_index))
	tocar.button_up.connect(func (): play_item.emit(audio_index))

const ITEM_PLAYLIST = preload("res://Elements/item_playlist/item_playlist.tscn")

static func create(index: int, name: String) -> ItemPlaylist:
	var instance = ITEM_PLAYLIST.instantiate()
	instance.audio_name = name
	instance.audio_index = index
	return instance
