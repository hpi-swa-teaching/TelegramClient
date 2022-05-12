constructing
addReplySnippet

	self addMorphBack: (self class defaultTextMorph
		contents: self messageModel replyText;
		hResizing: #spaceFill;
		color: TCUDefaultValues colorLightGray;
		yourself).
	self addMorphBack: (RectangleMorph new
		color: TCUDefaultValues colorLightBlue;
		borderWidth: 0;
		height: 5).
	self addMorphBack: (RectangleMorph new
		color: TCUDefaultValues colorGray;
		borderWidth: 0;
		height: 2).
	self addMorphBack: (RectangleMorph new
		color: TCUDefaultValues colorLightBlue;
		borderWidth: 0;
		height: 5)