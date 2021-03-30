extends Node2D
class_name SpeechBubble

onready var label: RichTextLabel = $AnimationContainer/RichTextLabel
onready var ninePatch: NinePatchRect = $AnimationContainer/NinePatchRect

const MARGIN := 6

func _ready() -> void:
	##### v  NORMALLY DONE IN A METHOD CALL FROM A SIGNAL  v
	label.set_bbcode("This is a test of text in this speech bubble.")
	
	var textSize = label.get_font("normal_font").get_string_size(label.get_text())
	label.margin_left = MARGIN
	label.margin_top = MARGIN - 1
	label.margin_right = textSize.x + MARGIN
	
	# in my actual project the below values would tween
	label.percent_visible = 1
	label.rect_size = textSize
	ninePatch.margin_right = (textSize.x + (MARGIN * 2) - 1)
