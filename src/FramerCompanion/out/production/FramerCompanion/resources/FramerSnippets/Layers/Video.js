plugin.run = function(contents, options) {
  return contents + "\nvideo = new VideoLayer\n	width: 1920\n	height: 1080\n	video: \"filename.mov\"\n\nvideo.player.play()";
};
