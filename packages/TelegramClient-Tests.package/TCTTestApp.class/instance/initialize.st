as yet unclassified
initialize

	self
		initializeClient;
		initializeHandlers;
		chats: TCCChats new.
		
	self authHandler: TCTTestAuthHandler new.

	[self receiveLoop] fork.