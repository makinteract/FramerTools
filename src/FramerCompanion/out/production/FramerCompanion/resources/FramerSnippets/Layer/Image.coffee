plugin.run = (contents, options) ->
	"""
#{contents}
# Image
layerA = new Layer
    image: "images/sea.png"
"""
