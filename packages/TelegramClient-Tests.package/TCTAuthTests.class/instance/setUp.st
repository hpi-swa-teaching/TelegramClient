running
setUp

	self core: TCTTestCore new.
	1 seconds wait.
	self core authHandler isAuthorizationStateReady ifTrue: [self core authHandler logout.
		1 seconds wait.
		self core: TCTTestCore new.
		1 seconds wait].