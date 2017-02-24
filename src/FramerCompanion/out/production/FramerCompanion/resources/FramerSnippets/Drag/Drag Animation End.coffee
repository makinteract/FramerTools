plugin.run = (contents, options) ->
	"""
#{contents}
layerA.onDragAnimationEnd ->
      layerA.animate
          scale: 1
"""
