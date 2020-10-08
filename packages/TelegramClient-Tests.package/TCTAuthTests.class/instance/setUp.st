running
setUp

	self timeout: 50 "seconds".
	self core: TCTTestCore new.
	10 seconds wait.
	self core authHandler isAuthorizationStateReady ifTrue: [self core authHandler logout.
		10 seconds wait.
		self core: TCTTestCore new.
		10 seconds wait].