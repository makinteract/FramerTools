## Project:
## Version: 0.0.1
## Author:
## Description:

# Add your Framer.js code here
# Refer to https://framerjs.com/docs/ for documentation

layerA = new Layer
	x: Align.center
	y: Align.center
	width: 200
	height:200
	backgroundColor: "#FAFB40"



layerA.onClick ->
	layerA.animate
		properties:
			scale: 3
			backgroundColor: "#C2FF01"
			borderRadius: 100


