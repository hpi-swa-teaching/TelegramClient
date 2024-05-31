as yet unclassified
addText

	self addMorphBack: (self class defaultTextMorph
		contents: self text;
		hResizing: #spaceFill;
		color: Color white;
		margins: self class defaultMargins;
		yourself).