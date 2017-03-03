plugin.run = (contents, options) ->
	"""
#{contents}

# Create the draggable layer
layerA = new Layer
	x: Align.center
	y: Align.center

# Enable dragging
layerA.draggable.enabled = true
"""
