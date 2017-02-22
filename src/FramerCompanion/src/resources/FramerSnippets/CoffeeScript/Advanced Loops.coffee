plugin.run = (contents, options) ->
	"""
#{contents}
# Advanced for loops

# example 1
# for x in [1..10]
#   print x

# list comprehension
# example 2
print x for x in [1..10]

# example 3: count by 2
print x for x in [1..10] by 2

# example 4
print x * x for x in [1..10]
"""
