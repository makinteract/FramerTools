plugin.run = (contents, options) ->
	"""
#{contents}

# Create layers
layerA = new Layer
	size: Screen.size
	backgroundColor: "#00AAFF"

layerB = new Layer
	size: Screen.size
	backgroundColor: "#FFCC33"

# Set up FlowComponent
flow = new FlowComponent
flow.showNext(layerA)

# Switch on click
layerA.onClick ->
	flow.showNext(layerB)

layerB.onClick ->
	flow.showPrevious()
"""
