constructing
addDate

	self addMorphBack: (self class defaultTextMorph
		contents: self messageDateText;
		hResizing: #spaceFill;
		color: self secondaryColor;
		yourself).