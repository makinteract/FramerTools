plugin.run = (contents, options) ->
	"""
#{contents}
# Classes
# Classes are objects that can be extended to add or change behavior.

# Create Class Button
class Button extends Layer
    constructor: (options) ->

        # Set default properties
        # The symbol @ is equivalent to the keyword "this"
        super _.defaults options,
            width: 300
            height: 100
            backgroundColor: "maroon"

        # For more infor about lodash functions see here:
        # https://lodash.com/docs#defaults

# Create button
button = new Button
    width: 200 # can change the value here
"""
