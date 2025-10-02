class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle: State = $"../idle"
@onready var attack: State = $"../attack"



## what happens when the player enters this State
func Enter() -> void:
	player.UpdateAnimation("walk")
	

func Exit() -> void:
	pass


## what happens during the _process update in this State?
func Process(_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	
	player.velocity = player.direction * move_speed
	
	if player.SetDirection(): 
		player.UpdateAnimation("walk")
	
	return null

## what happens during the _physics_process update in this State?
func Physics(_delta : float) -> State:
	return null

## What happens with input events in this State?
func HandleInput(_event: InputEvent) -> State:
	if _event.is_action_pressed("attack"):
		return attack
	return null
