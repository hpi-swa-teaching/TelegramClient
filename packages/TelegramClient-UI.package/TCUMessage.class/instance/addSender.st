constructing
addSender

	self addMorphBack: (self class defaultTextMorph
		contents: self messageModel senderName;
		hResizing: #spaceFill;
		color: self secondaryColor;
		margins: self class defaultMargins;
		yourself).