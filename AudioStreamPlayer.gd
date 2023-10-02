extends AudioStreamPlayer


var audio_stream: AudioStream  # Assign the audio stream in the Inspector

func _ready():
	stream = audio_stream
	play()

func _on_stream_finished():
	# When the audio finishes playing, restart it to create a loop
	stop()
	play()
