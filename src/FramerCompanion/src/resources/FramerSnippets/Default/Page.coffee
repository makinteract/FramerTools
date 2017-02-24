plugin.run = (contents, options) ->
	"""
#{contents}

# Variables
pageCount = 8
gutter = 60

# Create PageComponent
pageScroller = new PageComponent
	point: Align.center
	width: Screen.width / 2
	height: Screen.height / 2
	scrollVertical: false
	clip: false

# Loop to create pages
for index in [0...pageCount]
	page = new Layer
		size: pageScroller.size
		x: (pageScroller.width + gutter) * index
		backgroundColor: "#00AAFF"
		hueRotate: index * 20
		parent: pageScroller.content

	page.onClick ->
		pageScroller.snapToPage(this)

"""
