extends Button

@onready var click_pressed: AudioStreamPlayer2D = $"../../ClickPressed"
@onready var click_hover: AudioStreamPlayer2D = $"../../ClickHover"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	click_pressed.play()
	await get_tree().create_timer(0.2).timeout
	Global.music = 1
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")


func _on_mouse_entered() -> void:
	click_hover.play()