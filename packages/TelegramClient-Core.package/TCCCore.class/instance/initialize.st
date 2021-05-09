initialization
initialize

	self
		client: TCCTeleClient newForCurrentOS;
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0; 
		pendingMessages: Dictionary new. 

	[self receiveLoop] fork.