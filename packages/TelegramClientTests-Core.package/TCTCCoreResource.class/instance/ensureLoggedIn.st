controlling
ensureLoggedIn

	self core client isAlive ifFalse: [ self setUp. ].

	self core authenticationHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		[self core authenticationHandler isAuthorizationStateReady]
			whileFalse: [1 seconds wait].
		3 seconds wait.
	].