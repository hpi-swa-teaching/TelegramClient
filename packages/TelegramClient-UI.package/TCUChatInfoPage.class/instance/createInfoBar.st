drawing
createInfoBar

	self infoBar: (RectangleMorph new
		borderWidth: 0;
		color: Color white;
		width: self width;
		height: self class defaultInfoBarHeight;
		topLeft: self topLeft;
		yourself).