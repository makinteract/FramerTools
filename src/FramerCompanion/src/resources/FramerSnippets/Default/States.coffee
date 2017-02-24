plugin.run = (contents, options) ->
	"""
#{contents}

# Create layer
layerA = new Layer
	x: Align.center
	y: Align.center

# Add states
layerA.states =
	one:
		scale: 0.75
	two:
		scale: 1

# Define animationOptions
layerA.animationOptions =
	curve: Spring(damping: 0.5)

# Switch states on click
layerA.onClick ->
	layerA.stateCycle("one", "two")
"""
