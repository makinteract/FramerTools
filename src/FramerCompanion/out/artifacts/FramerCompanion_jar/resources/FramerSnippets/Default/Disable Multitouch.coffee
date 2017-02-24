plugin.run = (contents, options) ->
	"""
#{contents}
Framer.Extras.TouchEmulator.disable()
"""
