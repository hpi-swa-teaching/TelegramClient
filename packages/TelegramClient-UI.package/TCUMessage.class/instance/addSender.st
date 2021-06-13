drawing
addSender
	
	self addMorphFront: (self class defaultTextMorph
		contents: self sender fullName;
		color: self dateColor;
		margins: self class defaultMargins;
		yourself).