controlling
setUp

	self core: TCTCTestCore new.
	[self core authHandler isAwaitingPhoneNumber] whileFalse: [1 second wait.].
	self ensureLoggedIn.