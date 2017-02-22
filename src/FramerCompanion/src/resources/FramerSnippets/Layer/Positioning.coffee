plugin.run = (contents, options) ->
	"""
#{contents}
# Positioning layer
layerA = new Layer
layerA.centerX()
layerA.centerY()
layerA.center()

layerA.x= Align.left
layerA.x= Align.right
layerA.y= Align.top
layerA.y= Align.bottom
layerA.y= Align.center

# Center of layerA
print layerA.midX, layerA.midY
print layerA.minX, layerA.minY
print layerA.maxX, layerA.maxY
"""
