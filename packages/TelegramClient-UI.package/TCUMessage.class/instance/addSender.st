drawing
addSender
	
	self addMorphFront: (self defaultTextMorph
		contents: (self sender fullName);
		color: self dateColor;
		margins: self defaultMargins;
		yourself).