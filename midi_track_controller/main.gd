extends Node

@onready var lista_playlist: VBoxContainer = $Fundo/Margem/Coluna/Listas/PanelContainer2/Margem/Coluna/Scroll/ListaPlaylist

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	lista_playlist.add_child(ItemPlaylist.create(0,'teste'))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
