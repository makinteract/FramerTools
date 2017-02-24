plugin.run = (contents, options) ->
	"""
#{contents}
# Video layer
video = new VideoLayer
	width: 1920
	height: 1080
	video: "filename.mov"

video.player.play()
"""
