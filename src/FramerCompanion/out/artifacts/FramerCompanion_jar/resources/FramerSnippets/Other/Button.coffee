plugin.run = (contents, options) ->
	"""
#{contents}
class Button extends Layer
    constructor: (options) ->
        super _.defaults options,
            width: 300
            height: 100
            backgroundColor: "maroon"

            # Deactivate by default
        @deactivate()

    activate: ->
        @backgroundColor = "red"

    deactivate: ->
        @backgroundColor = "maroon"


# Create button
button = new Button
    width: 200 # can change the value here

button.onTapStart ->
    @activate()

button.onTapEnd ->
    @deactivate()
"""
