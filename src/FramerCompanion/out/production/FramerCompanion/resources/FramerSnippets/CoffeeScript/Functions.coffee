plugin.run = (contents, options) ->
	"""
#{contents}
# Functions

# example 1: no parameters
sayHello = ->
    print "Hello!"
    print "How are you?"

sayHello()

# example 2: parameter and return value
y = (x) ->
    return x * 10

print y(10)


# example 3: Using layers and multiple parameters
layerA = new Layer y:0

layerB = new Layer y: 300

rotate = (layer, degrees = 10) ->  # 10 is default value
    layer.rotation = layer.rotation + degrees

# Now, we can pass in any layer! Neat.
layerA.onClick ->
    rotate(layerA)

layerB.onClick ->
    rotate(layerB, 45)
"""
