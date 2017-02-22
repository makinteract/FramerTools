plugin.run = (contents, options) ->
	"""
#{contents}
# Snap to the layer pageThree
page.snapToPage(pageThree)

# Snap with a custom animation curve
page.snapToPage(pageTwo, true, curve: Spring)
"""
