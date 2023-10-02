extends Node2D

var bgm: AudioStreamPlayer

func _ready():
	#plays bgm if the bgm exist not sure I need this but it works! 
	#Actually this does work at all and gives me errors but the game runs anyway idk
	#leaving script for future refrence
	bgm = $AudioStreamPlayer
	if bgm:
		bgm.play()
