plugin.run = (contents, options) ->
	"""
#{contents}
layerA.onDragAnimationStart ->
    layerA.animate
        scale: 0.8
"""
