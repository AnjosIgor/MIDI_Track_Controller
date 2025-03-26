extends PanelContainer

@export var items: Dictionary[int,ItemPlaylist] 
@export var temporary_item: String

@onready var lista_playlist: VBoxContainer = $Margem/Coluna/Scroll/ListaPlaylist
@onready var nome_musica: Button = $Margem/Coluna/Acoes/NomeMusica
@onready var adicionar_musica: Button = $Margem/Coluna/Acoes/AdicionarMusica
@onready var playlist_player: AudioStreamPlayer = %PlaylistPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	adicionar_musica.button_up.connect(add_music)
	nome_musica.button_up.connect(find_music)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func find_music() -> void:
	#abre a janela do explorador
	pass

func add_music() -> void:
	#usa o caminho na variavel temporary_item e cria um arquivo de audio
	#adiciona na playlist_player
	#adiciona o item na lista
	pass

func add_item(index: int, name: String) -> void:
	var node = ItemPlaylist.create(index, name)
	node.remove_item.connect(remove_music)
	lista_playlist.add_child(node)
	items[index] = node
	

func remove_music(index: int) -> void:
	pass

func remove_item(index: int):
	lista_playlist.remove_child(items[index])
