plugin.run = (contents, options) ->
	"""
#{contents}

# Create layer
layerA = new Layer
	x: Align.center
	y: Align.center

# Rotate on click
layerA.onClick ->
	layerA.animate
		rotation: layerA.rotation + 90
		options:
			curve: Spring(damping: 0.5)
"""
