plugin.run = (contents, options) ->
	"""
#{contents}
# Create Slider
slider = new SliderComponent
    min: 0
    max: 100
    value: 50
    knobSize: 40

slider.center()

# Customize fill color
slider.fill.backgroundColor = "#fff"

# Customize fill
slider.fill.backgroundColor = "#00AAFF"

# Customize knob
slider.knob.shadowY = 2
"""
