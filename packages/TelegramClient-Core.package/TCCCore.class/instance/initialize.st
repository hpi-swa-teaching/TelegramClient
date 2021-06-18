initialization
initialize

	self client ifNil: [self client: TCCTeleClient newForCurrentOS].
	self
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0;
		pendingRequests: Dictionary new;
		users: (TCCUsers new core: self).

	[self receiveLoop] fork.