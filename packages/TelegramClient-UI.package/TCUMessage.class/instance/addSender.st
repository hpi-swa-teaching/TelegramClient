drawing
addSender
	
	self addMorphBack: (self class defaultTextMorph
		contents: self sender fullName;
		color: self dateColor;
		margins: self class defaultMargins;
		yourself).