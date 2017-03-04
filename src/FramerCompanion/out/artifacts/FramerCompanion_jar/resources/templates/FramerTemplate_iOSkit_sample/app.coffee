# Documentation:
# https://github.com/k-vyn/framer-ios-kit#status

# Import module
ios = require "ios-kit"

statusBar = new ios.StatusBar
    carrier:"Verizon"
    network:"3G"
    signal:3
    battery:70
    style:"dark"


nav = new ios.NavBar
    right:"Next"
    left:"< Back"
    title:"Document"
    blur:true

nav.right.onClick ->
	print ios.utils.getTime() 


button = new ios.Button
	text:"Alert me"
	type:"big"
	style:"light"
	backgroundColor:"white"
	constraints:{top:300}

button.onClick ->
	alert = new ios.Alert
	    title:"Warning!"
	    message:"This is awesome"
	    actions:["OK", "Cancel"]

field = new ios.Field
	placeholder:"Write here"
	constraints:{top:200}
	width:300

field.x= Align.center




	