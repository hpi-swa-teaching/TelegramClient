running
ensureLoggedIn

	self core client isAlive ifFalse: [ self setUp. ].

	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		[self core authHandler isAuthorizationStateReady]
			whileFalse: [1 seconds wait].
		" todo: ensureReceivedAtLeastChat"
		3 seconds wait.
	].