constructing
addPaddingMorphs

	self addMorphBack: (RectangleMorph new
		color: self messageColor;
		borderWidth: 0;
		height: 5).
	self addMorphBack: (RectangleMorph new
		color: self secondaryColor;
		borderWidth: 0;
		height: 2).
	self addMorphBack: (RectangleMorph new
		color: self messageColor;
		borderWidth: 0;
		height: 5).