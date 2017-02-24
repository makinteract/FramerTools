plugin.run = (contents, options) ->
	"""
#{contents}
# Variables
rows = 16
gutter = 10
rowHeight = 200

scroll = new ScrollComponent
	size: Screen.size
	scrollHorizontal: false

# Loop to create row layers
for index in [0...rows]

	cell = new Layer
		width:  Screen.width
		height: rowHeight
		y: index * (rowHeight + gutter)
		parent: scroll.content
		backgroundColor: "#00AAFF"
		hueRotate: index * 10

"""
