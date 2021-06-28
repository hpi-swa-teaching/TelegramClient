constructing
addSender
	
	self addMorphBack: (self class defaultTextMorph
		contents: self sender fullName;
		hResizing: #spaceFill;
		color: self dateColor;
		margins: self class defaultMargins;
		yourself).