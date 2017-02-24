plugin.run = (contents, options) ->
	"""
#{contents}
# Add layerA to the right
# Add layerB to the bottom
page.addPage(layerA)
page.addPage(layerB, "bottom")
"""
