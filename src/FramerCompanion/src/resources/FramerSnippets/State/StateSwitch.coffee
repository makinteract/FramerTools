plugin.run = (contents, options) ->
	"""
#{contents}
layerA.stateSwitch("state2")
"""
