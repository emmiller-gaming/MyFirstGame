extends Area3D
class_name Rat
@onready var speech_bubble: PanelContainer = $SpeechBubble
@onready var message: Label = $SpeechBubble/VBox/Message
@onready var accept_button: Button = $SpeechBubble/VBox/AcceptButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(OnBodyEntered)
	speech_bubble.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# if PlayerCharacter CollisionObject3D:
		# print("Squeak!")
		
	
	pass

func OnBodyEntered(other_body):
	
		speech_bubble.show()

# trying to hide the speech bubble when leaving the rat from a distance
func OnBodyLeft(other_body):
		speech_bubble.hide()
		
