initialize-release
initialize

	self 
		specificClient: (self createSpecificClient:  Smalltalk platformName);
		handle: self specificClient create.
		
	self authHandler: (AuthHandler new client: self).
	
	[self receiveLoop] fork.
	
	
	