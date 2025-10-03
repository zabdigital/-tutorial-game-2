class_name EnemyState extends Node


## stores reference to the enemy that this state belongs to
var enemy : Enemy
var state_machine : EnemyStateMachine

## what happens when we initialize this state?
func init() -> void:
	pass

## what happens when the enemy enters this state?
func enter() -> void:
	pass

## what happens when the enemy exits this state?
func exit() -> void:
	pass

func process( _delta : float ) -> EnemyState:
	return null


func physics( _delta : float ) -> EnemyState:
	return null
