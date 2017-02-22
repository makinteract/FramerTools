plugin.run = (contents, options) ->
	"""
#{contents}
# Booleans
a= true
b= on
c= yes
d= false
e= off
f= no

print not a
print a and b
print a and d
print a or b
print a or d
"""
