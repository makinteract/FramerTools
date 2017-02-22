plugin.run = (contents, options) ->
	"""
#{contents}
layerA.draggable.constraints =
    x: 0
    y: 0
    width: 160
    height: 80
"""
