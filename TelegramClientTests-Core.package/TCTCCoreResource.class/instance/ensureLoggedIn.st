as yet unclassified
ensureLoggedIn
	
	self core client isAlive ifFalse: [
		self core client: TCCTeleClient newForCurrentOS.
	].
	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		[self core authHandler isAuthorizationStateReady]
			whileFalse: [1 seconds wait].
		3 seconds wait.
	].