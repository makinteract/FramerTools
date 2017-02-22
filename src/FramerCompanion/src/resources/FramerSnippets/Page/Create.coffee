plugin.run = (contents, options) ->
	"""
#{contents}
#Create a PageComponent
page = new PageComponent
  scrollVertical: false

# Create page layers
layerA = new Layer
    parent: page.content

layerB = new Layer
    x: 110
    parent: page.content
"""
