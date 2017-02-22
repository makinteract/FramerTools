plugin.run = (contents, options) ->
	"""
#{contents}
# Create a layer
layerA = new Layer
    x: 0
    y: 0
    width: 200
    height: 200
    backgroundColor: "#fff"

# Override properties
layerA.borderRadius = "10%"
layerA.rotation = 45
layerA.opacity = 0.5
layerA.scale = 0.5
"""
