initialization
initialize

	self
		initializeClient;
		initializeHandlers;
		chats: TCCChats new.
	
	[self receiveLoop] fork.