initialization
initialize

	self
		client: TCCTeleClient newForCurrentOS;
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0; 
		pendingRequests: Dictionary new;
		users: (TCCUsers new core: self).

	[self receiveLoop] fork.