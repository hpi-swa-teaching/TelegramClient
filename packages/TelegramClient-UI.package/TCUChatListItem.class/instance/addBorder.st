drawing
addBorder

	self addMorph: (Morph new
		width: self width;
		color: Color black;
		height: 1;
		position: (self position + (0 @ (self class defaultHeight - 1)));
		yourself).