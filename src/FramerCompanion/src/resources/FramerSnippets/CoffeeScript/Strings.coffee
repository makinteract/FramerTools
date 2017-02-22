plugin.run = (contents, options) ->
	"""
#{contents}
# Strings
# fore more: http://coffeescript-cookbook.github.io/chapters/strings/
name = "Andrea"
last= "Bianchi"
print "My name is #{name} and my lastname is #{last}"
print name.length
print name + " " + last
print name.toUpperCase()
print name.toLowerCase()
print name.charAt (3)
print name.indexOf('r')
print name.lastIndexOf('a')
print "1,2,3".split(',')
print Array(4).join 'Hello ' # repeat three times
print "I am not a crook.".split("not ").join("") # replace
"""
