initialization
initialize

	self
		client: TCCTeleClient newForCurrentOS;
		initializeHandlers;
		chats: TCCChats new;
		loggedInUserID: 0.

	[self receiveLoop] fork.