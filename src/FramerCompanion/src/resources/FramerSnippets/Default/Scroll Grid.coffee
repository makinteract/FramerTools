plugin.run = (contents, options) ->
	"""
#{contents}

# Variables
tileCount = 26
columnCount = 3
gutter = 8

combinedGutterWidth = gutter * (columnCount - 1)
combinedTileWidth = Screen.width - combinedGutterWidth
tileWidth = combinedTileWidth / columnCount
tileOffset = tileWidth + gutter

scroll = new ScrollComponent
	size: Screen.size
	scrollHorizontal: false

# Loop to create grid tiles
for index in [0...tileCount]

	columnIndex = index % columnCount
	rowIndex = Math.floor(index / columnCount)

	tile = new Layer
		x: columnIndex * tileOffset
		y: rowIndex * tileOffset
		size: tileWidth
		borderRadius: 4
		parent: scroll.content
	tile.image = Utils.randomImage(tile)

"""
