testing
testAuthStateReady

	self core loginWithTestData.
	2 seconds wait.
	self assert: self core authHandler isAuthorizationStateReady.