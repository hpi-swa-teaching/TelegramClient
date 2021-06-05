testing
testAuthStateReady

	self sharedCore loginWithTestData.
	3 seconds wait.
	self
		assert: self sharedCore authHandler isAuthorizationStateReady
		description: ['Expected auth state ready but was ' , self sharedCore authHandler authState]