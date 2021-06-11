drawing
addText

	self addMorph: (self class defaultTextMorph
		contents: self text;
		color: Color white;
		margins: self class defaultMargins;
		yourself).