constructing
addReplySnippet

	| replySnippet |
	
	replySnippet := TCUReplySnippet newWith: (self messageModel replyText) coloredIn: self messageColor.
	replySnippet when: #requestScroll send: #triggerRequestScroll to: self.
	
	self addMorph: (replySnippet).
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