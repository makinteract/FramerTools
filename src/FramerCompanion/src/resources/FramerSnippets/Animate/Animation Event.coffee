plugin.run = (contents, options) ->
	"""
#{contents}
layerA = new Layer
 
layerA.animate
    x: 100
 
# For Events.AnimationStart 
layerA.onAnimationStart ->
    print "Animation started"
 
# For Events.AnimationStop 
layerA.onAnimationStop ->
    print "Animation stopped"
 
# For Events.AnimationEnd     
layerA.onAnimationEnd ->
    print "Animation ended"

"""
