drawing
createInfoBar

	self infoBar: (RectangleMorph new
		borderWidth: self class defaultBorderWidth;
		color: Color white;
		width: self width;
		height: self class defaultInfoBarHeight;
		topLeft: self topLeft;
		yourself).