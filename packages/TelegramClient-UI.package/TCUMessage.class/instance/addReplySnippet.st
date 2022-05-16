constructing
addReplySnippet

	self addMorphBack: (self class defaultTextMorph
		contents: self messageModel replyText;
		hResizing: #spaceFill;
		color: TCUDefaultValues colorLightGray;
		yourself).
	self addMorphBack: (RectangleMorph new
		color: self messageColor;
		borderWidth: 0;
		height: 5).
	self addMorphBack: (RectangleMorph new
		color: self secondaryColor;
		borderWidth: 0;
		height: 2).
	self addMorphBack: (RectangleMorph new
		color: self messageColor;
		borderWidth: 0;
		height: 5)