plugin.run = (contents, options) ->
	"""
#{contents}
ani= new Animation
	properties:
	    rotation: 180
	    borderRadius: 200
	options:
		curve: Bezier.ease
	    time: 1

ani.start()
ani.stop()
ani.reverse().start()
"""
