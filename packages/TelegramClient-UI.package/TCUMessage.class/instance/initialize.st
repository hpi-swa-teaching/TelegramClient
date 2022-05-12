initialization
initialize

	super initialize.

	self initializeDefaults.
	
	messageModel isReply ifTrue: [self addReplySnippet].
	
	self
		addSender;
		addContent;
		addDate;
		shrinkToContent.