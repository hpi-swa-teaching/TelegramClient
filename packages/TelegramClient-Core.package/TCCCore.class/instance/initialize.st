initialization
initialize

	self client ifNil: [self client: TCCTeleClient newForCurrentOS].
	self
		initializeHandlers;
		chats: TCCChats newWithDefaultSorting;
		loggedInUserID: 0;
		pendingRequests: Dictionary new;
		users: (TCCUserStore newWith: self);
		imageStore: (TCCImageStore newWith: self);
		callbackCounter: 0.

	[self receiveLoop] forkAt: Processor userBackgroundPriority.