class_name State_Idle extends State

@onready var walk: State_Walk = $"../walk"




## what happens when the player enters this State
func Enter() -> void:
	player.UpdateAnimation("idle")
	pass

func Exit() -> void:
	pass


## what happens during the _process update in this State?
func Process(_delta : float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	return null

## what happens during the _physics_process update in this State?
func Physics(_delta : float) -> State:
	return null

## What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	return null
