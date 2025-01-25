extends Node

var events =[
	{
		"id":"1",
		"title": "vulcano",
		"descrition": "esplode um vulcNO",
		"num_opzioni" : 2,
		"options":[
			{
				"id": "1.1",
				"title": "non fare niente",
				"desc": "stai a guardare",
				"world_update":{
					"climate":-10
				}
			},
			{
				"id": "1.2",
				"title": "fai qualcosa",
				"desc": "in realtà non fai niente lo stesso",
				"world_update":{
					"climate":-5
				}
			},
			{
				"id": "1.3",
				"title": "ND",
				"desc": "ND"
			}
		]
	},
		{
		"id":"2",
		"title": "scientific research",
		"descrition": "you made a discovery in ...",
		"options":[
			{
				"id": "2.1",
				"title": "wow",
				"desc": "eccheccazzo",
				"world_update":{
					"climate": -4
				}
			},
			{
				"id": "2.2",
				"title": "ajooo",
				"desc": "fanculo"
			}
		]
	},
] 
#var options = []
var arrayevents = []
# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()

func begin():
	print("ok")
	var x = 0
	while x!=5:
		x+=1
		var my_random_number = rng.randi_range(1, 2) # Replace with function body.
		Evetlist.arrayevents.append(my_random_number)
		print(Evetlist.arrayevents)
func _ready():
	pass
#var delta_total = 0;

# Called every frame. 'deldeltta' is the elapsed time since the previous frame.
func _process(delta):
	#delta_total += delta;
	#if delta_total > 10000:
		#delta_total = 0
		#trigger_event(1);
	pass
func trigger_event(id):
	var index = -1
	for x in events:
		index += 1
		if x["id"] == str(id):
			#index = index    ### mi trova l'indice dell'evento cercato
				
			get_tree().change_scene_to_file("res://scenes/event.tscn")
			
			
			#Buttontext.getText(index, events[index]["options"])
			break

	#var _num_options = events[index].count
	
	#for x in events[index]["options"]:
	#	print(x["title"])
	#	print(x["desc"])
func trigger_option(id):
	#print(events)
	#print(events[int(Level.levelid)-1])
	#print(events[int(Level.levelid)-1]["options"])
	#print(events[int(Level.levelid)-1]["options"][int(id)-1]["world_update"])
	var options = events[int(Level.levelid)-1]["options"][int(id)-1]["world_update"]
	for x in options:
		#print(x, options[x])
		WorldState.world_update(x,options[x])
	get_tree().change_scene_to_file("res://scenes/in_game.tscn")
