plugin.run = (contents, options) ->
	"""
#{contents}
slider.onValueChange ->
    print slider.value
"""
