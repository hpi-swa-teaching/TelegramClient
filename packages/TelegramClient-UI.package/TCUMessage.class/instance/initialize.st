initialization
initialize

	super initialize.

	self initializeDefaults.
	
	self messageModel isReply ifTrue: [self addReplySnippet].
	
	self
		addSender;
		addContent;
		addDate;
		addProfilePhoto;
		shrinkToContent.