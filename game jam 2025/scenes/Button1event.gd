extends Button
var id = Evetlist.arrayevents[0]

func _ready():
	print(Evetlist.arrayevents)
	print(id)
func _on_pressed():
	print(id)
	Level.changelevel(id)
	Evetlist.trigger_event(id)
