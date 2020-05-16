initialize-release
initialize

	self 
		client: (self createSpecificClient:  Smalltalk platformName);
		handle: client create;
		setLibParams;
		setDBEncryptionKey: ''.