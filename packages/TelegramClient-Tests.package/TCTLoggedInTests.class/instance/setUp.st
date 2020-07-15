as yet unclassified
setUp

	self core: TCTTestCore new.
	1 seconds wait.
	self core authHandler isAuthorizationStateReady ifFalse: [self core loginWithTestData.
		2 seconds wait].