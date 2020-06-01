initialization
initialize

	self
		initializeClient;
		initializeHandlers;
		chats: Set new.
	
	[self receiveLoop] fork.