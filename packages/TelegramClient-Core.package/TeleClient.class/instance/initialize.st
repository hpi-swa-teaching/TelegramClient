initialize-release
initialize

	self 
		client: (self createSpecificClient:  Smalltalk platformName);
		handle: client create.
		
	[ReceiveThread newWithClient: self] fork.
	
	self 
		setLibParams;
		setDBEncryptionKey: ''.
	
	