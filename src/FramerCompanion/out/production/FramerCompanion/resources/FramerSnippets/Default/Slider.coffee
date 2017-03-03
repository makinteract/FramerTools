plugin.run = (contents, options) ->
	"""
#{contents}

# Create slider
slider = new SliderComponent
	point: Align.center
	knobSize: 44

# Listen for slider value updates
slider.onValueChange ->
	Screen.backgroundColor = Color.mix("black", "#00AAFF", slider.value)

"""
