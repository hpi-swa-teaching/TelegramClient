initialization
initialize

	super initialize.
	self 
		extent: self defaultExtent;
		borderWidth: 0;
		addHeader;
		addChatsList;
		addChatWindow;
		initializeChatsList.