running
setUp

	self core: TCTTestCore new.
	2 seconds wait.
	self core authHandler isAuthorizationStateReady ifTrue: [self core authHandler logout.
		2 seconds wait.
		self core: TCTTestCore new.
		2 seconds wait].