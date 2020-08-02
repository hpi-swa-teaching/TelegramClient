initialization
initialize

	self
		client: TCCTeleClient newForCurrentOS;
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0.

	[self receiveLoop] fork.