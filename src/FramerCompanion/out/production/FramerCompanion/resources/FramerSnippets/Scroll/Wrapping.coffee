plugin.run = (contents, options) ->
	"""
#{contents}
# Sketch Import
sketch = Framer.Importer.load("imported/scrollable@1x")

# Wrap the imported content layers
scroll = ScrollComponent.wrap(sketch.content)
"""
