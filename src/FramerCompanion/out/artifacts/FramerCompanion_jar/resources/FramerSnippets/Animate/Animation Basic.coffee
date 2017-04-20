plugin.run = (contents, options) ->
	"""
#{contents}
layerA.animate
    rotation: 180
    borderRadius: 200
    options:
        curve: Bezier.ease
        time: 1

print layerA.isAnimating
"""
