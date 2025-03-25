extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# busca o caminho do audio
	print(stream.get_clip_stream(0).resource_path)
	print(stream.clip_count)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
