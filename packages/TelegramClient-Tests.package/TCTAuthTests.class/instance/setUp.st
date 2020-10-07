running
setUp

	self timeout: 30 "seconds".
	self core: TCTTestCore new.
	5 seconds wait.
	self core authHandler isAuthorizationStateReady ifTrue: [self core authHandler logout.
		5 seconds wait.
		self core: TCTTestCore new.
		5 seconds wait].