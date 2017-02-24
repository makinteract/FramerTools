plugin.run = (contents, options) ->
	"""
#{contents}
layerA.stateCycle(["state1", "state2"])
"""
