plugin.run = (contents, options) ->
	"""
#{contents}
# Sketch Import
sketch = Framer.Importer.load("imported/pages@1x")

# Wrap the imported content layers
page = PageComponent.wrap(sketch.content)
"""
