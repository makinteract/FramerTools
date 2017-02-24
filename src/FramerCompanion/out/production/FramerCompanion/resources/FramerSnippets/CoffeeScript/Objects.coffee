plugin.run = (contents, options) ->
	"""
#{contents}
# Objects
# Objects are a way to structure data
people =
    koen: "123 Main Street"
    sara: "456 Wall Street"
    jorn: "789 Arts Street"
    all: ->
      return this.koen+" "+this.sara+" "+this.jorn
    city: ->
      return "New York"


print people.koen
print people["sara"]
print people.city()
print people.all()

# example 2 (single line)
student = {name: "Mohammed", age: 24, phone: 9848022338 }
print student
"""
