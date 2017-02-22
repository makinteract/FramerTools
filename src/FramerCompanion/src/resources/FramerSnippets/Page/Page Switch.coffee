plugin.run = (contents, options) ->
	"""
#{contents}
# Listen to any page switch
page.on "change:currentPage", ->
    page.previousPage.animate
        opacity: 0.2
        scale: 0.8

    page.currentPage.animate
        opacity: 1
        scale: 1
"""
