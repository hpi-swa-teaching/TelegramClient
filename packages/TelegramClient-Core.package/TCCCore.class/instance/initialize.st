initialization
initialize

	self
		initializeClient;
		initializeHandlers;
		chats: TCCChats new;
		loggedInUserID: 0.

	[self receiveLoop] fork.