testing
testCanLogOut

	self sharedResource ensureLoggedOut.
	self
		assert: self sharedCore authHandler isAuthStateClosed
		description: ['Auth state was ' , self sharedCore authHandler authState].