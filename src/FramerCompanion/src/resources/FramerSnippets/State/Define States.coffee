plugin.run = (contents, options) ->
	"""
#{contents}
layerA.states.state1 =
	width: 400
	height: 400

layerA.states.state2 =
	width: 200
	height: 200
"""
