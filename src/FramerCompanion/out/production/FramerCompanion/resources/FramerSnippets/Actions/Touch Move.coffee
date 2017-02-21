plugin.run = (contents, options) ->
	"""
#{contents}
layerA.onTouchMove ->
	print "Touch move"
	"""
