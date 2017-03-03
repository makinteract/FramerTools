plugin.run = (contents, options) ->
	"""
#{contents}
# Set Screen background
Screen.backgroundColor = "#00AAFF"

# Define and set custom device
Framer.Device.customize
	deviceType: Framer.Device.Type.Tablet
	screenWidth: 720
	screenHeight: 1024
	deviceImage: "http://f.cl.ly/items/001L0v3c1f120t0p2z24/custom.png"
	deviceImageWidth: 800
	deviceImageHeight: 1214
# Scale all content by 50%
Framer.Device.contentScale = 0.5

# Set Device background
Canvas.image = Utils.randomImage(Canvas.size)

# Set Device background
Canvas.backgroundColor = "#00AAFF"
"""
