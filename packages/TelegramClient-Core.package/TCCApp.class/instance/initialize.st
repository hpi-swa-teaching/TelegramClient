initialization
initialize

	self
		initializeClient;
		initializeHandlers;
		chats: Dictionary new.
	
	[self receiveLoop] fork.