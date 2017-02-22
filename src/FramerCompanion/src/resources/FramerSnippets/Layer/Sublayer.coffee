plugin.run = (contents, options) ->
	"""
#{contents}
# Sublayer
layerA = new Layer

sublayerA = new Layer
    width: 100, height: 100, borderRadius: 10
    x: 20, y: 20
    backgroundColor: "black"
    superLayer: layerA

sublayerB = new Layer

layerA.addChild sublayerB
sublayerB.placeBefore(layerA)
"""
