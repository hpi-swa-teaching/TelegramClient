initialization
initialize

	self
		initializeClient;
		initializeAuthHandler.
	
	[self receiveLoop] fork.