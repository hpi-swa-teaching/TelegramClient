constructing
addState

	self addMorphBack: (self class defaultTextMorph
		contents: self pollTypeString;
		hResizing: #spaceFill;
		color: Color gray;
		margins: self class defaultMargins;
		yourself).