extends Node

# Sprint 1: Hex Map + Yields
@export var map_size = Vector2i(50, 30)
var tiles = {}

func generate_map():
    for x in map_size.x:
        for y in map_size.y:
            var tile = {"terrain": "grassland", "yields": {"food": 2, "shields": 1, "trade": 1}, "owner": null}
            tiles[Vector2i(x,y)] = tile
    print('Map generated - Sprint 1 complete')

func get_yields(pos):
    return tiles.get(pos, {}).get("yields", {})