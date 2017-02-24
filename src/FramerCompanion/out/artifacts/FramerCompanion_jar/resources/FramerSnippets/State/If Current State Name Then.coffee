plugin.run = (contents, options) ->
	"""
#{contents}
if layerA.states.current.name == "state1"
	layerB.animate
		properties:
			opacity: 1
		curve: "spring(270,24,10)"
"""
