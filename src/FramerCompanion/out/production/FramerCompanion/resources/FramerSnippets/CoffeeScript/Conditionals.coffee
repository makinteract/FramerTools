plugin.run = (contents, options) ->
	"""
#{contents}
# Conditionals
button = new Layer

# Place a layer in the center
layerA = new Layer
    point: Align.center

button.onClick ->
    if layerA.visible
        layerA.visible = false
    else
        layerA.visible = true


layerA.draggable.enabled = true

marker = new Layer
    x: Align.center
    y: Align.center

layerA.onDrag ->
    if layerA.y > marker.y
        layerA.backgroundColor = "red"
"""
