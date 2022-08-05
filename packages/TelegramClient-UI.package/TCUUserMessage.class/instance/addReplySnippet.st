constructing
addReplySnippet

	| replySnippet |
	
	replySnippet := TCUReplySnippet newWith: (self messageModel replyText) coloredIn: self messageColor.
	replySnippet when: #requestScroll send: #triggerRequestScroll to: self.
	
	self addMorph: (replySnippet).
	self addPaddingMorphs.