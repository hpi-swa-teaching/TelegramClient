testing
testAuthStateIsAwaitingPhoneNumber

	self sharedResource ensureLoggedOut.
	self
		assert: self sharedCore authHandler isAwaitingPhoneNumber
		description: ['Auth state was ' , self sharedCore authHandler authState].