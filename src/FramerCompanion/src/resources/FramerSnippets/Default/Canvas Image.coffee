plugin.run = (contents, options) ->
	"""
#{contents}
# Set Device background
Canvas.image = Utils.randomImage(Canvas.size)

# Set Device background
Canvas.backgroundColor = "#00AAFF"
"""
