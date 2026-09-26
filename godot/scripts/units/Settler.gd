extends Node2D
# Sprint 1: Settler can found city
@export var movement_points = 1
func found_city(pos):
    # Create city entity
    print('City founded at ', pos)
    # Emit signal to create City node
    owner.emit_signal('city_founded', pos)