testing
testCanLogIn

	self
		assert: self sharedCore authenticationHandler isAuthorizationStateReady
		description: ['Expected auth state ready but was ' , self sharedCore authenticationHandler authState]