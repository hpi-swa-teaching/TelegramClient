constructing
addQuestion

	self addMorphBack: (self class defaultTextMorph
		contents: self text;
		hResizing: #spaceFill;
		color: Color black;
		margins: self class defaultMargins;
		yourself).