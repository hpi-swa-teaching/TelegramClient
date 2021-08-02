controlling
ensureLoggedIn
	
	| file |
	file := TCTCCoreResource file.
	'Resource Ensure Logged In Begin' printOn: file.
	file flush.
	
	self core client isAlive ifFalse: [ self setUp. ].

	self core authHandler isAuthorizationStateReady ifFalse: [
		self core loginWithTestData.
		[self core authHandler isAuthorizationStateReady]
			whileFalse: [1 seconds wait].
		3 seconds wait.
	].
		file := TCTCCoreResource file.
	'Resource Ensure Logged In End' printOn: file.
	file flush.