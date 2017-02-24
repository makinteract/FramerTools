plugin.run = (contents, options) ->
	"""
#{contents}
# Loops

# example 1
for i in [1..3]
    layer = new Layer
        size: 50
        backgroundColor: "blue"
        y: i * 200


# example 2
layerA = new Layer x: 0
layerB = new Layer x: 100
layerC = new Layer x: 200

# Put all the layers in an array so we can loop them
layers = [layerA, layerB, layerC]

for layer in layers
    layer.size = 50
    layer.backgroundColor = "blue"

    layer.onClick ->
        this.backgroundColor = "pink"


# example 3
layers= []
for i in [1..3]
    layer = new Layer
        size: 50
        backgroundColor: "red"
        y: i * 200

    layer.onClick ->
        this.backgroundColor = "brown"

    layers.push layer
"""
