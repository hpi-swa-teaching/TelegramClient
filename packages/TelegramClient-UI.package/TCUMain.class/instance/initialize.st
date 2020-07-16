initialization
initialize

	super initialize.
	self
		extent: self defaultExtent;
		borderWidth: 0;
		chatWindow: TCUChatWindow new;
		addChatsList;
		addHeader;
		initializeChatWindow;
		subscribeChatsList;
		clipSubmorphs: true.