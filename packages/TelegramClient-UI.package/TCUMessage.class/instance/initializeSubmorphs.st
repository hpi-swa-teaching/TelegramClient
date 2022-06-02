initialization
initializeSubmorphs

	self messageModel isReply ifTrue: [self addReplySnippet].
	
	self
		addSender;
		addContent;
		addDate;
		shrinkToContent.