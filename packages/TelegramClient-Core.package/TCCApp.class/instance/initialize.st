initialization
initialize

	self
		initializeClient;
		initializeHandlers.
	
	[self receiveLoop] fork.