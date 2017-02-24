plugin.run = (contents, options) ->
	"""
#{contents}
# Use desktop cursor
document.body.style.cursor = "auto"
"""
