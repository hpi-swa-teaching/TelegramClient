drawing
addText

	self addMorph: (self defaultTextMorph
		contents: self text;
		color: Color white;
		margins: self defaultMargins;
		yourself).