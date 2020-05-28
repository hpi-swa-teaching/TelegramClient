initialization
initialize

	self
		initializeClient;
		initializeAuthHandler;
		initializeAuthUI.
	
	[self receiveLoop] fork.