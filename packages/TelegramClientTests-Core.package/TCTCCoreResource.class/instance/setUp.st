controlling
setUp

	self core: TCTCTestCore new.
	[self isCoreReadyForSetup] whileFalse: [1 second wait.].
	self ensureLoggedIn.