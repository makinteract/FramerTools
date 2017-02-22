plugin.run = (contents, options) ->
	"""
#{contents}
# Math operations
# fore more: http://coffeescript-cookbook.github.io/chapters/math/
print 9 + 5
print 9 - 5
print 9 * 5
print 9 / 5
print 9 // 5
print 9 % 5
print 2 ** 3
print Math.exp(4) # e^4
print Math.log(5)
print Math.sqrt(9)
print Math.random()*10
"""
