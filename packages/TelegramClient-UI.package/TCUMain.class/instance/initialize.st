initialization
initialize

	super initialize.
	self
		extent: self defaultExtent;
		borderWidth: 0;
		addHeader;
		chatWindow: TCUChatWindow new;
		addChatsList;
		initializeChatWindow;
		subscribeChatsList;
		subscribeCore;
		clipSubmorphs: true.