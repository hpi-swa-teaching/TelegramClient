testing
testCanLogIn

	self
		assert: self sharedCore authHandler isAuthorizationStateReady
		description: ['Expected auth state ready but was ' , self sharedCore authHandler authState]