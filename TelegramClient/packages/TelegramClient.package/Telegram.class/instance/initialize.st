initialize-release
initialize
	self initializeAuthStateHandler.
	self initializeMessageHandlers.
	listener := Dictionary new.
	[[client isDestroyed] whileFalse: [self update. Processor yield]] fork