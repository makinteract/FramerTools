plugin.run = (contents, options) ->
	"""
#{contents}
# Create a ScrollComponent
scroll = new ScrollComponent
    size: 120
scroll.center()
# Create the content layers
layerA = new Layer
    parent: scroll.content

layerB = new Layer
    parent: scroll.content
"""
