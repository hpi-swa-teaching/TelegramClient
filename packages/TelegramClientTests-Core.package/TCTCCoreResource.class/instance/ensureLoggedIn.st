controlling
ensureLoggedIn

	Transcript showln: 'Resource Ensure Logged in Begin'.
	self core client isAlive ifFalse: [ self setUp. ].

	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		[self core authHandler isAuthorizationStateReady]
			whileFalse: [1 seconds wait].
		3 seconds wait.
	].
	Transcript showln: 'Resource Ensure Logged in End'.