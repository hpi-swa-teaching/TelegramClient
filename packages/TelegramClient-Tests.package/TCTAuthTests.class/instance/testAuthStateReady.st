as yet unclassified
testAuthStateReady

	self core loginWithTestData.
	2 seconds wait.
	self assert: core authHandler isAuthorizationStateReady.