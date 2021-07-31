testing
testCanLogOut

	self sharedResource ensureLoggedOut.
	self
		assert: self sharedCore authenticationHandler isAuthStateClosed
		description: ['Auth state was ' , self sharedCore authenticationHandler authState].