class_name State extends Node


## stores the reference to the player that this State belongs to
static var player: Player



func _ready() -> void:
	pass # Replace with function body.



## what happens when the player enters this State
func Enter() -> void:
	pass

func Exit() -> void:
	pass


## what happens during the _process update in this State?
func Process(_delta : float) -> State:
	return null

## what happens during the _physics_process update in this State?
func Physics(_delta : float) -> State:
	return null

## What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	return null
