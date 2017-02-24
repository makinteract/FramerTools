plugin.run = (contents, options) ->
	"""
#{contents}
# Disable right-click context menu
if document.addEventListener?
	document.addEventListener "contextmenu", (event) ->
		event.preventDefault()
"""
